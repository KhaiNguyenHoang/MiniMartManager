using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Services;
using MiniMartManager.Views;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System;

namespace MiniMartManager.ViewModels
{
    public partial class UserDashboardViewModel : ObservableObject
    {
        private readonly INavigationService _navigationService;
        private readonly MiniMartDbContext _context;

        [ObservableProperty]
        private ObservableCollection<Product> _availableProducts;

        [ObservableProperty]
        private ObservableCollection<OrderDetail> _cartItems;

        [ObservableProperty]
        private Product? _selectedProduct;

        [ObservableProperty]
        private int _quantityToAddToCart = 1;

        partial void OnSelectedProductChanged(Product? value)
        {
            AddToCartCommand.NotifyCanExecuteChanged();
        }

        partial void OnQuantityToAddToCartChanged(int value)
        {
            AddToCartCommand.NotifyCanExecuteChanged();
        }

        [ObservableProperty]
        private decimal _cartTotal;

        public IRelayCommand NavigateToSalesCommand { get; }
        public IRelayCommand AddToCartCommand { get; }
        public IRelayCommand RemoveFromCartCommand { get; }
        public IRelayCommand PlaceOrderCommand { get; }
        public IRelayCommand NavigateToOrderHistoryCommand { get; }
        public IRelayCommand NavigateToUserProfileCommand { get; }
        public IRelayCommand LogoutCommand { get; }

        public UserDashboardViewModel(INavigationService navigationService, MiniMartDbContext context)
        {
            _navigationService = navigationService;
            _context = context;

            _availableProducts = new ObservableCollection<Product>();
            _cartItems = new ObservableCollection<OrderDetail>();

            LoadProducts();

            AddToCartCommand = new RelayCommand(AddToCart, CanAddToCart);
            RemoveFromCartCommand = new RelayCommand<OrderDetail>(RemoveFromCart);
            PlaceOrderCommand = new RelayCommand(PlaceOrder, CanPlaceOrder);
            NavigateToSalesCommand = new RelayCommand(() => _navigationService.NavigateTo<SalesView, SalesViewModel>());
            NavigateToOrderHistoryCommand = new RelayCommand(() => _navigationService.NavigateTo<UserOrderHistoryView, UserOrderHistoryViewModel>());
            NavigateToUserProfileCommand = new RelayCommand(() => _navigationService.NavigateTo<UserProfileView, UserProfileViewModel>());
            LogoutCommand = new RelayCommand(() => _navigationService.NavigateTo<LoginView, LoginViewModel>());

            CartItems.CollectionChanged += (sender, e) => UpdateCartTotal();
        }

        private void LoadProducts()
        {
            AvailableProducts = new ObservableCollection<Product>(_context.Products.Include(p => p.Category).ToList());
        }

        private void AddToCart()
        {
            if (SelectedProduct == null || QuantityToAddToCart <= 0)
            {
                return;
            }

            // Validate stock quantity
            if (SelectedProduct.StockQuantity < QuantityToAddToCart)
            {
                MessageBox.Show($"Not enough stock for {SelectedProduct.Name}. Available: {SelectedProduct.StockQuantity}", "Out of Stock", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            var existingCartItem = CartItems.FirstOrDefault(item => item.ProductId == SelectedProduct.Id);

            if (existingCartItem != null)
            {
                // Validate stock quantity for existing item
                if (SelectedProduct.StockQuantity < (existingCartItem.Quantity + QuantityToAddToCart))
                {
                    MessageBox.Show($"Adding {QuantityToAddToCart} more of {SelectedProduct.Name} would exceed available stock. Available: {SelectedProduct.StockQuantity - existingCartItem.Quantity}", "Out of Stock", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }
                existingCartItem.Quantity += QuantityToAddToCart;
            }
            else
            {
                CartItems.Add(new OrderDetail
                {
                    ProductId = SelectedProduct.Id,
                    Product = SelectedProduct,
                    Quantity = QuantityToAddToCart,
                    Price = SelectedProduct.Price
                });
            }
            QuantityToAddToCart = 1; // Reset quantity
            UpdateCartTotal();
        }

        private bool CanAddToCart()
        {
            return SelectedProduct != null && QuantityToAddToCart > 0;
        }

        private void RemoveFromCart(OrderDetail? itemToRemove)
        {
            if (itemToRemove != null)
            {
                CartItems.Remove(itemToRemove);
                UpdateCartTotal();
            }
        }

        private async void PlaceOrder()
        {
            if (!CanPlaceOrder())
            {
                return;
            }
            
            if (CurrentUserService.CurrentUserId == 0)
            {
                MessageBox.Show("No user logged in. Please log in again.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var newOrder = new Order
            {
                OrderDate = DateTime.Now,
                UserId = CurrentUserService.CurrentUserId,
                TotalAmount = CartTotal,
                Status = OrderStatus.Pending,
                OrderDetails = CartItems.ToList()
            };

            _context.Orders.Add(newOrder);
            await _context.SaveChangesAsync();

            MessageBox.Show("Starting stock update...", "Debug Stock", MessageBoxButton.OK, MessageBoxImage.Information);

            // Update product stock
            foreach (var item in CartItems)
            {
                var productToUpdate = _context.Products.Find(item.ProductId);
                if (productToUpdate != null)
                {
                    MessageBox.Show($"Updating stock for {productToUpdate.Name}: Old Stock = {productToUpdate.StockQuantity}, Quantity Ordered = {item.Quantity}", "Debug Stock", MessageBoxButton.OK, MessageBoxImage.Information);
                    productToUpdate.StockQuantity -= item.Quantity;
                    MessageBox.Show($"New Stock = {productToUpdate.StockQuantity}", "Debug Stock", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show($"Product with ID {item.ProductId} not found for stock update.", "Debug Stock", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
            await _context.SaveChangesAsync(); // Save changes to product stock
            MessageBox.Show("Stock update completed.", "Debug Stock", MessageBoxButton.OK, MessageBoxImage.Information);

            MessageBox.Show("Order placed successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            CartItems.Clear(); // Clear cart after placing order
            UpdateCartTotal();
            LoadProducts(); // Reload products to reflect updated stock
        }

        private bool CanPlaceOrder()
        {
            return CartItems.Any();
        }

        private void UpdateCartTotal()
        {
            CartTotal = CartItems.Sum(item => item.Quantity * item.Price);
            PlaceOrderCommand.NotifyCanExecuteChanged();
        }
    }
}
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

        [ObservableProperty]
        private decimal _cartTotal;

        public IRelayCommand NavigateToSalesCommand { get; }
        public IRelayCommand AddToCartCommand { get; }
        public IRelayCommand RemoveFromCartCommand { get; }
        public IRelayCommand PlaceOrderCommand { get; }

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

            var existingCartItem = CartItems.FirstOrDefault(item => item.ProductId == SelectedProduct.Id);

            if (existingCartItem != null)
            {
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

            // For simplicity, assume a default user for now. In a real app, this would be the logged-in user.
            var currentUser = _context.Users.FirstOrDefault(u => u.Username == "admin"); // Or get from a session/login service
            if (currentUser == null)
            {
                MessageBox.Show("No user found to place order.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var newOrder = new Order
            {
                OrderDate = DateTime.Now,
                UserId = currentUser.Id,
                TotalAmount = CartTotal,
                Status = OrderStatus.Pending,
                OrderDetails = CartItems.ToList()
            };

            _context.Orders.Add(newOrder);
            await _context.SaveChangesAsync();

            MessageBox.Show($"Order placed successfully! Order ID: {newOrder.Id}", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            CartItems.Clear(); // Clear cart after placing order
            UpdateCartTotal();
        }

        private bool CanPlaceOrder()
        {
            return CartItems.Any();
        }

        private void UpdateCartTotal()
        {
            CartTotal = CartItems.Sum(item => item.Quantity * item.Price);
        }
    }
}
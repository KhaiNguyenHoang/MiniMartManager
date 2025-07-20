using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System;

namespace MiniMartManager.ViewModels
{
    public partial class SalesViewModel : ObservableObject
    {
        public ObservableCollection<Product> AvailableProducts { get; set; } = new ObservableCollection<Product>();
        public ObservableCollection<CartItem> CartItems { get; set; } = new ObservableCollection<CartItem>();

        [ObservableProperty]
        private Product selectedProduct = null!;

        [ObservableProperty]
        private int quantityToAdd;

        [ObservableProperty]
        private decimal totalAmount;

        public IRelayCommand AddToCartCommand { get; }
        public IRelayCommand ProcessSaleCommand { get; }

        public SalesViewModel()
        {
            AvailableProducts = new ObservableCollection<Product>();
            CartItems = new ObservableCollection<CartItem>();
            LoadAvailableProducts();

            AddToCartCommand = new RelayCommand(AddToCart, CanAddToCart);
            ProcessSaleCommand = new RelayCommand(ProcessSale, CanProcessSale);

            CartItems.CollectionChanged += (s, e) => CalculateTotalAmount();
        }

        private void LoadAvailableProducts()
        {
            using (var context = new MiniMartDbContext())
            {
                AvailableProducts.Clear();
                foreach (var product in context.Products.Include(p => p.Category).ToList())
                {
                    AvailableProducts.Add(product);
                }
            }
        }

        private void AddToCart()
        {
            if (SelectedProduct == null)
            {
                MessageBox.Show("Please select a product.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (QuantityToAdd <= 0)
            {
                MessageBox.Show("Quantity must be greater than 0.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (QuantityToAdd > SelectedProduct.Stock)
            {
                MessageBox.Show($"Not enough stock for {SelectedProduct.Name}. Available: {SelectedProduct.Stock}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var existingCartItem = CartItems.FirstOrDefault(item => item.Product.Id == SelectedProduct.Id);
            if (existingCartItem != null)
            {
                existingCartItem.Quantity += QuantityToAdd;
                existingCartItem.Subtotal = existingCartItem.Quantity * existingCartItem.UnitPrice;
            }
            else
            {
                CartItems.Add(new CartItem
                {
                    Product = SelectedProduct,
                    Quantity = QuantityToAdd,
                    UnitPrice = SelectedProduct.Price,
                    Subtotal = QuantityToAdd * SelectedProduct.Price
                });
            }

            SelectedProduct.Stock -= QuantityToAdd; // Update stock in UI
            QuantityToAdd = 0; // Reset quantity input
            (AddToCartCommand as RelayCommand)?.NotifyCanExecuteChanged();
            (ProcessSaleCommand as RelayCommand)?.NotifyCanExecuteChanged();
        }

        private bool CanAddToCart()
        {
            return SelectedProduct != null && QuantityToAdd > 0 && QuantityToAdd <= SelectedProduct.Stock;
        }

        private void CalculateTotalAmount()
        {
            TotalAmount = CartItems.Sum(item => item.Subtotal);
        }

        private void ProcessSale()
        {
            if (!CartItems.Any())
            {
                MessageBox.Show("Cart is empty.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            using (var context = new MiniMartDbContext())
            {
                using (var transaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        var order = new Order
                        {
                            OrderDate = DateTime.Now,
                            UserId = 1, // TODO: Replace with actual logged-in user ID
                            TotalAmount = TotalAmount,
                            OrderDetails = new ObservableCollection<OrderDetail>()
                        };
                        context.Orders.Add(order);
                        context.SaveChanges(); // Save order to get its ID

                        foreach (var item in CartItems)
                        {
                            var orderDetail = new OrderDetail
                            {
                                OrderId = order.Id,
                                ProductId = item.Product.Id,
                                Quantity = item.Quantity,
                                UnitPrice = item.UnitPrice
                            };
                            order.OrderDetails.Add(orderDetail);

                            // Update product stock in database
                            var productInDb = context.Products.Find(item.Product.Id);
                            if (productInDb != null)
                            {
                                productInDb.Stock -= item.Quantity;
                            }
                        }
                        context.SaveChanges();
                        transaction.Commit();

                        MessageBox.Show("Sale processed successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                        CartItems.Clear();
                        LoadAvailableProducts(); // Refresh product list
                        TotalAmount = 0;
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        MessageBox.Show($"Error processing sale: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
        }

        private bool CanProcessSale()
        {
            return CartItems.Any();
        }
    }

    public partial class CartItem : ObservableObject
    {
        [ObservableProperty]
        private Product product;

        [ObservableProperty]
        private int quantity;

        [ObservableProperty]
        private decimal unitPrice;

        [ObservableProperty]
        private decimal subtotal;
    }
}
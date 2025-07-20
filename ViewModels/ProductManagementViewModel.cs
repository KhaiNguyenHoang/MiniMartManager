using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class ProductManagementViewModel : ObservableObject
    {
        public ObservableCollection<Product> Products { get; set; } = new ObservableCollection<Product>();

        public IRelayCommand AddProductCommand { get; }
        public IRelayCommand EditProductCommand { get; }
        public IRelayCommand DeleteProductCommand { get; }
        public IRelayCommand BackCommand { get; }

        private readonly INavigationService _navigationService;

        public ProductManagementViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            LoadProducts();

            AddProductCommand = new RelayCommand(AddProduct);
            EditProductCommand = new RelayCommand<Product>(EditProduct);
            DeleteProductCommand = new RelayCommand<Product>(DeleteProduct);
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<AdminDashboardView, AdminDashboardViewModel>());
        }

        private void LoadProducts()
        {
            using (var context = new MiniMartDbContext())
            {
                Products.Clear();
                foreach (var product in context.Products.Include(p => p.Category).ToList())
                {
                    Products.Add(product);
                }
            }
        }

        private void AddProduct()
        {
            var viewModel = new AddEditProductViewModel();
            var addEditProductView = new Views.AddEditProductView { DataContext = viewModel };
            if (addEditProductView.ShowDialog() == true)
            {
                LoadProducts(); // Refresh the list if saved
            }
        }

        private void EditProduct(Product product)
        {
            var viewModel = new AddEditProductViewModel(product);
            var addEditProductView = new Views.AddEditProductView { DataContext = viewModel };
            if (addEditProductView.ShowDialog() == true)
            {
                LoadProducts(); // Refresh the list if saved
            }
        }

        private void DeleteProduct(Product? product)
        {
            if (product == null) return;
            if (MessageBox.Show($"Are you sure you want to delete {product.Name}?", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
            {
                using (var context = new MiniMartDbContext())
                {
                    context.Products.Remove(product);
                    context.SaveChanges();
                    LoadProducts(); // Refresh the list
                }
            }
        }
    }
}
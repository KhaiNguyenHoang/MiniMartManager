using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;

namespace MiniMartManager.ViewModels
{
    public partial class AddEditProductViewModel : ObservableObject
    {
        [ObservableProperty]
        private Product product = new Product();

        [ObservableProperty]
        private ObservableCollection<Category> categories = new ObservableCollection<Category>();

        [ObservableProperty]
        private string windowTitle = string.Empty;

        [ObservableProperty]
        private bool? _dialogResult;

        public IRelayCommand SaveCommand { get; }
        public IRelayCommand CancelCommand { get; }

        public AddEditProductViewModel(Product? productToEdit = null)
        {
            Product = productToEdit ?? new Product(); // Initialize Product here
            LoadCategories();

            if (productToEdit != null)
            {
                WindowTitle = "Edit Product";
            }
            else
            {
                WindowTitle = "Add New Product";
            }

            SaveCommand = new RelayCommand(Save);
            CancelCommand = new RelayCommand(Cancel);
        }

        private void LoadCategories()
        {
            using (var context = new MiniMartDbContext())
            {
                Categories = new ObservableCollection<Category>(context.Categories.ToList());
            }
        }

        private void Save()
        {
            if (Product.StockQuantity < 0)
            {
                MessageBox.Show("Stock quantity cannot be negative.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            using (var context = new MiniMartDbContext())
            {
                if (Product.Id == 0) // New product
                {
                    if (context.Products.Any(p => p.Name == Product.Name))
                    {
                        MessageBox.Show("Product with this name already exists.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    if (Product.CategoryId == 0)
                    {
                        MessageBox.Show("Please select a category.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    if (Product.Price <= 0)
                    {
                        MessageBox.Show("Price cannot be negative.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    if (Product.StockQuantity <= 0)
                    {
                        MessageBox.Show("Stock quantity cannot be negative.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    if (Product.Name.Trim().Length == 0)
                    {
                        MessageBox.Show("Product name cannot be empty.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    context.Products.Add(Product);
                }
                else // Existing product
                {
                    if (Product.CategoryId == 0)
                    {
                        MessageBox.Show("Please select a category.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    if (Product.Price <= 0)
                    {
                        MessageBox.Show("Price cannot be negative.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    if (Product.StockQuantity <= 0)
                    {
                        MessageBox.Show("Stock quantity cannot be negative.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    if (Product.Name.Trim().Length == 0)
                    {
                        MessageBox.Show("Product name cannot be empty.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    context.Products.Update(Product);
                }
                context.SaveChanges();
                MessageBox.Show("Product saved successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                DialogResult = true;
            }
        }

        private void Cancel()
        {
            DialogResult = false;
        }
    }
}
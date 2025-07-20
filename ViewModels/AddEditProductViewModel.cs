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

        public bool? DialogResult { get; private set; }

        public IRelayCommand SaveCommand { get; }
        public IRelayCommand CancelCommand { get; }

        public AddEditProductViewModel(Product productToEdit = null)
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
            using (var context = new MiniMartDbContext())
            {
                if (Product.Id == 0) // New product
                {
                    context.Products.Add(Product);
                }
                else // Existing product
                {
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
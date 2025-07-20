using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class CategoryManagementViewModel : ObservableObject
    {
        public ObservableCollection<Category> Categories { get; set; } = new ObservableCollection<Category>();

        [ObservableProperty]
        private string newCategoryName;

        public IRelayCommand AddCategoryCommand { get; }
        public IRelayCommand EditCategoryCommand { get; }
        public IRelayCommand DeleteCategoryCommand { get; }
        public IRelayCommand BackCommand { get; }

        private readonly INavigationService _navigationService;

        public CategoryManagementViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            LoadCategories();

            AddCategoryCommand = new RelayCommand(AddCategory);
            EditCategoryCommand = new RelayCommand<Category>(EditCategory);
            DeleteCategoryCommand = new RelayCommand<Category>(DeleteCategory);
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<AdminDashboardView, AdminDashboardViewModel>(() => new AdminDashboardViewModel(_navigationService)));
        }

        private void LoadCategories()
        {
            using (var context = new MiniMartDbContext())
            {
                Categories.Clear();
                foreach (var category in context.Categories.ToList())
                {
                    Categories.Add(category);
                }
            }
        }

        private void AddCategory()
        {
            if (string.IsNullOrWhiteSpace(NewCategoryName))
            {
                MessageBox.Show("Category name cannot be empty.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            using (var context = new MiniMartDbContext())
            {
                if (context.Categories.Any(c => c.Name == NewCategoryName))
                {
                    MessageBox.Show("Category with this name already exists.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                var newCategory = new Category { Name = NewCategoryName };
                context.Categories.Add(newCategory);
                context.SaveChanges();
                MessageBox.Show("Category added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                NewCategoryName = string.Empty; // Clear the input field
                LoadCategories(); // Refresh the list
            }
        }

        private void EditCategory(Category category)
        {
            string newName = Microsoft.VisualBasic.Interaction.InputBox("Enter new category name:", "Edit Category", category.Name);
            if (!string.IsNullOrWhiteSpace(newName) && newName != category.Name)
            {
                using (var context = new MiniMartDbContext())
                {
                    if (context.Categories.Any(c => c.Name == newName && c.Id != category.Id))
                    {
                        MessageBox.Show("Category with this name already exists.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    category.Name = newName;
                    context.Categories.Update(category);
                    context.SaveChanges();
                    MessageBox.Show("Category updated successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    LoadCategories(); // Refresh the list
                }
            }
        }

        private void DeleteCategory(Category category)
        {
            if (MessageBox.Show($"Are you sure you want to delete category '{category.Name}'? This will also affect products in this category.", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
            {
                using (var context = new MiniMartDbContext())
                {
                    // Optional: Handle products in this category (e.g., set CategoryId to null or a default category)
                    // For now, let's just delete the category. EF Core might handle cascading deletes if configured.
                    context.Categories.Remove(category);
                    context.SaveChanges();
                    MessageBox.Show("Category deleted successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    LoadCategories(); // Refresh the list
                }
            }
        }
    }
}
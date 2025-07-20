using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using BCrypt.Net;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class UserManagementViewModel : ObservableObject
    {
        public ObservableCollection<User> Users { get; set; } = new ObservableCollection<User>();

        public IRelayCommand AddUserCommand { get; }
        public IRelayCommand EditUserCommand { get; }
        public IRelayCommand DeleteUserCommand { get; }
        public IRelayCommand BackCommand { get; }

        private readonly INavigationService _navigationService;

        public UserManagementViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            Users = new ObservableCollection<User>();
            LoadUsers();

            AddUserCommand = new RelayCommand(AddUser);
            EditUserCommand = new RelayCommand<User>(EditUser);
            DeleteUserCommand = new RelayCommand<User>(DeleteUser);
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<AdminDashboardView, AdminDashboardViewModel>(() => new AdminDashboardViewModel(_navigationService)));
        }

        private void LoadUsers()
        {
            using (var context = new MiniMartDbContext())
            {
                Users.Clear();
                foreach (var user in context.Users.ToList())
                {
                    Users.Add(user);
                }
            }
        }

        private void AddUser()
        {
            // Logic to open a new window/dialog for adding a user
            MessageBox.Show("Add User functionality will be implemented here.");
        }

        private void EditUser(User user)
        {
            // Logic to open a new window/dialog for editing a user
            MessageBox.Show($"Edit User: {user.Username}");
        }

        private void DeleteUser(User user)
        {
            if (MessageBox.Show($"Are you sure you want to delete user '{user.Username}'?", "Confirm Delete", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
            {
                using (var context = new MiniMartDbContext())
                {
                    context.Users.Remove(user);
                    context.SaveChanges();
                    MessageBox.Show("User deleted successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    LoadUsers(); // Refresh the list
                }
            }
        }
    }
}
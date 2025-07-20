using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Models;
using MiniMartManager.Data;
using System.Windows;
using System.Linq;
using BCrypt.Net;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class RegisterViewModel : ObservableObject
    {
        [ObservableProperty]
        private string username = string.Empty;

        private string _password = string.Empty;
        public string Password
        {
            get => _password;
            set => SetProperty(ref _password, value);
        }

        private string _confirmPassword = string.Empty;
        public string ConfirmPassword
        {
            get => _confirmPassword;
            set => SetProperty(ref _confirmPassword, value);
        }

        public IRelayCommand RegisterCommand { get; }
        public IRelayCommand BackToLoginCommand { get; }

        private readonly INavigationService _navigationService;

        public RegisterViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            RegisterCommand = new RelayCommand(Register);
            BackToLoginCommand = new RelayCommand(() => _navigationService.NavigateTo<LoginView, LoginViewModel>(() => new LoginViewModel(_navigationService)));
        }

        private void Register()
        {
            if (string.IsNullOrWhiteSpace(Username) || string.IsNullOrWhiteSpace(Password) || string.IsNullOrWhiteSpace(ConfirmPassword))
            {
                MessageBox.Show("Please fill in all fields.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (Password != ConfirmPassword)
            {
                MessageBox.Show("Passwords do not match.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            using (var context = new MiniMartDbContext())
            {
                if (context.Users.Any(u => u.Username == Username))
                {
                    MessageBox.Show("Username already exists.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(Password);
                var newUser = new User { Username = Username, HashedPassword = hashedPassword, Role = "User" }; // Default role
                context.Users.Add(newUser);
                context.SaveChanges();
                MessageBox.Show("Registration successful!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);

                _navigationService.NavigateTo<LoginView, LoginViewModel>(() => new LoginViewModel(_navigationService));
            }
        }
    }
}
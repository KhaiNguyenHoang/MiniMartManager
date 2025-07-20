using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Views;
using System.Linq;
using System.Windows;
using BCrypt.Net;
using MiniMartManager.Services;

namespace MiniMartManager.ViewModels;

public partial class LoginViewModel : ObservableObject
{
    [ObservableProperty]
    private string username = string.Empty;

    private string _password = string.Empty;
    public string Password
    {
        get => _password;
        set => SetProperty(ref _password, value);
    }

    public IRelayCommand LoginCommand { get; }
    public IRelayCommand NavigateToRegisterCommand { get; }

    private readonly INavigationService _navigationService;

    public LoginViewModel(INavigationService navigationService)
    {
        _navigationService = navigationService;
        LoginCommand = new RelayCommand(Login);
        NavigateToRegisterCommand = new RelayCommand(() => _navigationService.NavigateTo<RegisterView, RegisterViewModel>());
    }

    private void Login()
    {
        using (var context = new MiniMartDbContext())
        {
            var user = context.Users.FirstOrDefault(u => u.Username == Username);
            if (user != null && BCrypt.Net.BCrypt.Verify(Password, user.HashedPassword))
            {
                MessageBox.Show("Login successful!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                if (user.Role == "Admin")
                {
                    _navigationService.NavigateTo<AdminDashboardView, AdminDashboardViewModel>();
                }
                else
                {
                    _navigationService.NavigateTo<UserDashboardView, UserDashboardViewModel>();
                }
            }
            else
            {
                MessageBox.Show("Invalid username or password.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}

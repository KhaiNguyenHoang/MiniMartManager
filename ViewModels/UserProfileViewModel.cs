using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using MiniMartManager.Services;
using System.Linq;
using System.Windows;
using BCrypt.Net;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class UserProfileViewModel : ObservableObject
    {
        private readonly MiniMartDbContext _context;
        private readonly INavigationService _navigationService;

        [ObservableProperty]
        private User? _currentUser;

        [ObservableProperty]
        private string _oldPassword = string.Empty;

        [ObservableProperty]
        private string _newPassword = string.Empty;

        [ObservableProperty]
        private string _confirmNewPassword = string.Empty;

        public IRelayCommand ChangePasswordCommand { get; }
        public IRelayCommand BackCommand { get; }

        public UserProfileViewModel(MiniMartDbContext context, INavigationService navigationService)
        {
            _context = context;
            _navigationService = navigationService;
            CurrentUser = _context.Users.FirstOrDefault(u => u.Id == CurrentUserService.CurrentUserId); 

            ChangePasswordCommand = new RelayCommand(ChangePassword);
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<UserDashboardView, UserDashboardViewModel>());
        }

        private void ChangePassword()
        {
            if (CurrentUser == null)
            {
                MessageBox.Show("User not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (string.IsNullOrWhiteSpace(OldPassword) || string.IsNullOrWhiteSpace(NewPassword) || string.IsNullOrWhiteSpace(ConfirmNewPassword))
            {
                MessageBox.Show("Please fill in all password fields.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (!BCrypt.Net.BCrypt.Verify(OldPassword, CurrentUser.HashedPassword))
            {
                MessageBox.Show("Old password is incorrect.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (NewPassword != ConfirmNewPassword)
            {
                MessageBox.Show("New passwords do not match.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (NewPassword.Length < 6) // Example: Minimum password length
            {
                MessageBox.Show("New password must be at least 6 characters long.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            CurrentUser.HashedPassword = BCrypt.Net.BCrypt.HashPassword(NewPassword);
            _context.Users.Update(CurrentUser);
            _context.SaveChanges();

            MessageBox.Show("Password changed successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            OldPassword = string.Empty;
            NewPassword = string.Empty;
            ConfirmNewPassword = string.Empty;
        }
    }
}

using System.Windows;
using System.Windows.Controls;
using MiniMartManager.ViewModels;

namespace MiniMartManager.Views
{
    /// <summary>
    /// Interaction logic for RegisterView.xaml
    /// </summary>
    public partial class RegisterView : UserControl
    {
        public RegisterView()
        {
            InitializeComponent();
            this.Loaded += RegisterView_Loaded;
        }

        private void RegisterView_Loaded(object sender, RoutedEventArgs e)
        {
            if (PasswordBox != null)
            {
                PasswordBox.PasswordChanged += PasswordBox_PasswordChanged;
            }
            if (ConfirmPasswordBox != null)
            {
                ConfirmPasswordBox.PasswordChanged += ConfirmPasswordBox_PasswordChanged;
            }
        }

        private void PasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (this.DataContext is RegisterViewModel viewModel && sender is PasswordBox passwordBox)
            {
                viewModel.Password = passwordBox.Password;
            }
        }

        private void ConfirmPasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (this.DataContext is RegisterViewModel viewModel && sender is PasswordBox confirmPasswordBox)
            {
                viewModel.ConfirmPassword = confirmPasswordBox.Password;
            }
        }
    }
}
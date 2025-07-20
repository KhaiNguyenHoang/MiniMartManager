using System.Windows;
using MiniMartManager.Services;
using MiniMartManager.ViewModels;
using MiniMartManager.Views;

namespace MiniMartManager;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private readonly INavigationService _navigationService;

    public MainWindow()
    {
        InitializeComponent();
        _navigationService = new NavigationService(MainContentControl);
        _navigationService.NavigateTo<LoginView, LoginViewModel>(() => new LoginViewModel(_navigationService));
    }
}
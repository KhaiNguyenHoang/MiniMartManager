using System.Windows;
using MiniMartManager.Services;

namespace MiniMartManager;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private readonly INavigationService _navigationService;

    public MainWindow(INavigationService navigationService)
    {
        InitializeComponent();
        _navigationService = navigationService;
        ((NavigationService)_navigationService).SetContentControl(MainContentControl);
    }
}
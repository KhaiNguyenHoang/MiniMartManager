using System.Configuration;
using System.Data;
using System.IO;
using System.Windows;

using System.Windows.Threading;
using Microsoft.Extensions.DependencyInjection;
using MiniMartManager.Data;
using MiniMartManager.Services;
using MiniMartManager.ViewModels;
using MiniMartManager.Views;

namespace MiniMartManager;

/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
    public IServiceProvider ServiceProvider { get; private set; }

    public App()
    {
        ServiceCollection services = new ServiceCollection();
        ConfigureServices(services);
        ServiceProvider = services.BuildServiceProvider();
    }

    private void ConfigureServices(IServiceCollection services)
    {
        // DbContext
        services.AddDbContext<MiniMartDbContext>();

        // Services
        services.AddSingleton<INavigationService, NavigationService>();

        // ViewModels
        services.AddTransient<LoginViewModel>();
        services.AddTransient<AdminDashboardViewModel>();
        services.AddTransient<UserDashboardViewModel>();
        services.AddTransient<ProductManagementViewModel>();
        services.AddTransient<CategoryManagementViewModel>();
        services.AddTransient<UserManagementViewModel>();
        services.AddTransient<SalesViewModel>();
        services.AddTransient<OrderProcessingViewModel>();
        services.AddTransient<AddEditProductViewModel>();
        services.AddTransient<RegisterViewModel>();
        services.AddTransient<SalesViewModel>();
        services.AddTransient<OrderProcessingViewModel>();


        // Views
        services.AddSingleton<MainWindow>();
        services.AddTransient<LoginView>();
        services.AddTransient<AdminDashboardView>();
        services.AddTransient<UserDashboardView>();
        services.AddTransient<ProductManagementView>();
        services.AddTransient<CategoryManagementView>();
        services.AddTransient<UserManagementView>();
        services.AddTransient<SalesView>();
        services.AddTransient<OrderProcessingView>();
        services.AddTransient<AddEditProductView>();
        services.AddTransient<RegisterView>();
        services.AddTransient<SalesView>();
        services.AddTransient<OrderProcessingView>();
    }

    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        // Resolve MainWindow and set its DataContext
        var mainWindow = ServiceProvider.GetRequiredService<MainWindow>();
        var navigationService = ServiceProvider.GetRequiredService<INavigationService>() as MiniMartManager.Services.NavigationService;
        if (navigationService != null)
        {
            // Set the content control for the navigation service
            mainWindow.Loaded += (s, args) => navigationService.SetContentControl(mainWindow.MainContentControl);
        }
        mainWindow.Show();

        // Initial navigation to LoginView
        var initialNavigationService = ServiceProvider.GetRequiredService<INavigationService>();
        initialNavigationService.NavigateTo<LoginView, LoginViewModel>();
    }

    private void Application_DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
    {
        e.Handled = true;
        string errorMessage = string.Format("An unhandled exception occurred: {0}", e.Exception.Message);
        MessageBox.Show(errorMessage, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
        File.WriteAllText("error_log.txt", e.Exception.ToString());
    }
}


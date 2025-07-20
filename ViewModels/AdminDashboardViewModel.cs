using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class AdminDashboardViewModel : ObservableObject
    {
        private readonly INavigationService _navigationService;

        public IRelayCommand NavigateToProductManagementCommand { get; }
        public IRelayCommand NavigateToCategoryManagementCommand { get; }
        public IRelayCommand NavigateToUserManagementCommand { get; }
        public IRelayCommand NavigateToSalesCommand { get; }
        public IRelayCommand NavigateToOrderProcessingCommand { get; }
        public IRelayCommand LogoutCommand { get; }

        public AdminDashboardViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            NavigateToProductManagementCommand = new RelayCommand(() => _navigationService.NavigateTo<ProductManagementView, ProductManagementViewModel>());
            NavigateToCategoryManagementCommand = new RelayCommand(() => _navigationService.NavigateTo<CategoryManagementView, CategoryManagementViewModel>());
            NavigateToUserManagementCommand = new RelayCommand(() => _navigationService.NavigateTo<UserManagementView, UserManagementViewModel>());
            NavigateToSalesCommand = new RelayCommand(() => _navigationService.NavigateTo<SalesView, SalesViewModel>());
            NavigateToOrderProcessingCommand = new RelayCommand(() => _navigationService.NavigateTo<OrderProcessingView, OrderProcessingViewModel>());
            LogoutCommand = new RelayCommand(() => _navigationService.NavigateTo<LoginView, LoginViewModel>());
        }
    }
}
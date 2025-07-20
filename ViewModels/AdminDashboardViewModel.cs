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
        

        public AdminDashboardViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            NavigateToProductManagementCommand = new RelayCommand(() => _navigationService.NavigateTo<ProductManagementView, ProductManagementViewModel>(() => new ProductManagementViewModel(_navigationService)));
            NavigateToCategoryManagementCommand = new RelayCommand(() => _navigationService.NavigateTo<CategoryManagementView, CategoryManagementViewModel>(() => new CategoryManagementViewModel(_navigationService)));
            NavigateToUserManagementCommand = new RelayCommand(() => _navigationService.NavigateTo<UserManagementView, UserManagementViewModel>(() => new UserManagementViewModel(_navigationService)));
            
        }
    }
}
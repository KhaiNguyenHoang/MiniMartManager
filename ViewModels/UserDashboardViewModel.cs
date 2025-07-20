using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class UserDashboardViewModel : ObservableObject
    {
        private readonly INavigationService _navigationService;

        public IRelayCommand NavigateToSalesCommand { get; }

        public UserDashboardViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            NavigateToSalesCommand = new RelayCommand(() => _navigationService.NavigateTo<SalesView, SalesViewModel>(() => new SalesViewModel()));
        }
    }
}
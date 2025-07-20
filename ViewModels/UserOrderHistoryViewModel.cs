using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class UserOrderHistoryViewModel : ObservableObject
    {
        private readonly MiniMartDbContext _context;
        private readonly INavigationService _navigationService;

        [ObservableProperty]
        private ObservableCollection<Order> _userOrders;

        [ObservableProperty]
        private Order? _selectedOrder;

        public IRelayCommand BackCommand { get; }

        public UserOrderHistoryViewModel(MiniMartDbContext context, INavigationService navigationService)
        {
            _context = context;
            _navigationService = navigationService;
            _userOrders = new ObservableCollection<Order>();
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<UserDashboardView, UserDashboardViewModel>());
            _ = LoadUserOrders();
        }

        private async Task LoadUserOrders()
        {
            var userId = CurrentUserService.CurrentUserId; // Get current user ID from service

            if (userId == 0) // If no user is logged in or ID is not set
            {
                return;
            }

            var orders = await _context.Orders
                .Include(o => o.User)
                .Include(o => o.OrderDetails)
                    .ThenInclude(od => od.Product)
                .Where(o => o.UserId == userId)
                .OrderByDescending(o => o.OrderDate)
                .ToListAsync();

            UserOrders = new ObservableCollection<Order>(orders);
        }
    }
}

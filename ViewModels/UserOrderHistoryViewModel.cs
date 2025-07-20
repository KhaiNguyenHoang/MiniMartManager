using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
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
            // In a real application, you would get the current logged-in user's ID
            // For now, let's assume a default user or fetch all orders for demonstration
            var userId = 1; // Example: Assuming user with ID 1 is logged in

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

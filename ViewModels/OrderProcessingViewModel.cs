using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Linq;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class OrderProcessingViewModel : ObservableObject
    {
        private readonly MiniMartDbContext _context;
        private readonly INavigationService _navigationService;

        [ObservableProperty]
        private ObservableCollection<Order> _pendingOrders;

        [ObservableProperty]
        private Order? _selectedOrder;

        public OrderProcessingViewModel(MiniMartDbContext context, INavigationService navigationService)
        {
            _context = context;
            _navigationService = navigationService;
            LoadPendingOrdersCommand = new AsyncRelayCommand(LoadPendingOrders);
            ProcessOrderCommand = new AsyncRelayCommand(ProcessSelectedOrder);
            CompleteOrderCommand = new AsyncRelayCommand(CompleteSelectedOrder);
            CancelOrderCommand = new AsyncRelayCommand(CancelSelectedOrder);
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<AdminDashboardView, AdminDashboardViewModel>());
            _ = LoadPendingOrders();
        }

        public IAsyncRelayCommand LoadPendingOrdersCommand { get; }
        public IAsyncRelayCommand ProcessOrderCommand { get; }
        public IAsyncRelayCommand CompleteOrderCommand { get; }
        public IAsyncRelayCommand CancelOrderCommand { get; }
        public IRelayCommand BackCommand { get; }

        private async Task LoadPendingOrders()
        {
            var orders = await _context.Orders
                .Include(o => o.User)
                .Include(o => o.OrderDetails)
                    .ThenInclude(od => od.Product)
                .Where(o => o.Status == OrderStatus.Pending || o.Status == OrderStatus.Processing)
                .ToListAsync();
            PendingOrders = new ObservableCollection<Order>(orders);
        }

        private async Task ProcessSelectedOrder()
        {
            if (SelectedOrder != null && SelectedOrder.Status == OrderStatus.Pending)
            {
                SelectedOrder.Status = OrderStatus.Processing;
                await _context.SaveChangesAsync();
                await LoadPendingOrders(); // Refresh the list
            }
        }

        private async Task CompleteSelectedOrder()
        {
            if (SelectedOrder != null && SelectedOrder.Status == OrderStatus.Processing)
            {
                SelectedOrder.Status = OrderStatus.Completed;
                await _context.SaveChangesAsync();
                await LoadPendingOrders(); // Refresh the list
            }
        }

        private async Task CancelSelectedOrder()
        {
            if (SelectedOrder != null && (SelectedOrder.Status == OrderStatus.Pending || SelectedOrder.Status == OrderStatus.Processing))
            {
                SelectedOrder.Status = OrderStatus.Cancelled;
                await _context.SaveChangesAsync();
                await LoadPendingOrders(); // Refresh the list
            }
        }
    }
}

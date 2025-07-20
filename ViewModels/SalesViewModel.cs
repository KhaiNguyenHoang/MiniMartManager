using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MiniMartManager.Data;
using MiniMartManager.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using MiniMartManager.Services;
using MiniMartManager.Views;

namespace MiniMartManager.ViewModels
{
    public partial class SalesViewModel : ObservableObject
    {
        private readonly MiniMartDbContext _context;
        private readonly INavigationService _navigationService;

        [ObservableProperty]
        private DateTime _startDate = DateTime.Today.AddMonths(-1);

        [ObservableProperty]
        private DateTime _endDate = DateTime.Today;

        [ObservableProperty]
        private ObservableCollection<SaleReportItem> _salesReportData = new ObservableCollection<SaleReportItem>();

        public SalesViewModel(MiniMartDbContext context, INavigationService navigationService)
        {
            _context = context;
            _navigationService = navigationService;
            GenerateReportCommand = new AsyncRelayCommand(GenerateSalesReport);
            BackCommand = new RelayCommand(() => _navigationService.NavigateTo<AdminDashboardView, AdminDashboardViewModel>());
            LoadInitialReport();
        }

        public IAsyncRelayCommand GenerateReportCommand { get; }
        public IRelayCommand BackCommand { get; }

        private async Task GenerateSalesReport()
        {
            if (StartDate > EndDate)
            {
                // Optionally show an error message to the user
                return;
            }

            var salesData = await _context.Orders
                .Where(o => o.OrderDate >= StartDate && o.OrderDate <= EndDate)
                .SelectMany(o => o.OrderDetails)
                .GroupBy(od => od.Product.Name)
                .Select(g => new SaleReportItem
                {
                    ProductName = g.Key,
                    QuantitySold = g.Sum(od => od.Quantity),
                    TotalRevenue = g.Sum(od => od.Quantity * od.Price)
                })
                .OrderByDescending(item => item.TotalRevenue)
                .ToListAsync();

            SalesReportData.Clear();
            if (salesData.Any())
            {
                foreach (var item in salesData)
                {
                    SalesReportData.Add(item);
                }
            }
        }

        private async void LoadInitialReport()
        {
            await GenerateSalesReport();
        }
    }

    public partial class SaleReportItem : ObservableObject
    {
        [ObservableProperty]
        private string _productName = string.Empty;

        [ObservableProperty]
        private int _quantitySold;

        [ObservableProperty]
        private decimal _totalRevenue;
    }
}

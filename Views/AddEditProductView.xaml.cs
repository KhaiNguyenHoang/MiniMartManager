using System.Windows;
using MiniMartManager.ViewModels;
using System.ComponentModel;

namespace MiniMartManager.Views
{
    public partial class AddEditProductView : Window
    {
        public AddEditProductView()
        {
            InitializeComponent();
            // Subscribe to the DataContext's PropertyChanged event
            this.DataContextChanged += AddEditProductView_DataContextChanged;
        }

        private void AddEditProductView_DataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (e.OldValue is INotifyPropertyChanged oldViewModel)
            {
                oldViewModel.PropertyChanged -= ViewModel_PropertyChanged;
            }
            if (e.NewValue is AddEditProductViewModel newViewModel)
            {
                newViewModel.PropertyChanged += ViewModel_PropertyChanged;
            }
        }

        private void ViewModel_PropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(AddEditProductViewModel.DialogResult))
            {
                if (sender is AddEditProductViewModel viewModel && viewModel.DialogResult.HasValue)
                {
                    this.DialogResult = viewModel.DialogResult;
                    this.Close();
                }
            }
        }
    }
}
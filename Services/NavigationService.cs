using System;
using System.Windows.Controls;
using MiniMartManager.ViewModels;

namespace MiniMartManager.Services
{
    public class NavigationService : INavigationService
    {
        private readonly ContentControl _contentControl;

        public NavigationService(ContentControl contentControl)
        {
            _contentControl = contentControl;
        }

        public void NavigateTo<TView, TViewModel>(Func<TViewModel> viewModelFactory)
            where TView : UserControl, new()
            where TViewModel : class
        {
            var view = new TView();
            var viewModel = viewModelFactory();
            view.DataContext = viewModel;
            _contentControl.Content = view;
        }
    }
}
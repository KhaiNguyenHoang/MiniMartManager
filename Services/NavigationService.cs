using System;
using System.Windows.Controls;
using Microsoft.Extensions.DependencyInjection;
using MiniMartManager.ViewModels;

namespace MiniMartManager.Services
{
    public interface INavigationService
    {
        void NavigateTo<TView, TViewModel>()
            where TView : UserControl
            where TViewModel : class;
        void SetContentControl(ContentControl contentControl);
    }

    public class NavigationService : INavigationService
    {
        private readonly IServiceProvider _serviceProvider;
        private ContentControl? _contentControl;

        public NavigationService(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        public void SetContentControl(ContentControl contentControl)
        {
            _contentControl = contentControl;
        }

        public void NavigateTo<TView, TViewModel>()
            where TView : UserControl
            where TViewModel : class
        {
            if (_contentControl == null)
            {
                throw new InvalidOperationException("ContentControl has not been set for NavigationService.");
            }

            var view = _serviceProvider.GetRequiredService<TView>();
            var viewModel = _serviceProvider.GetRequiredService<TViewModel>();
            view.DataContext = viewModel;
            _contentControl.Content = view;
        }
    }
}
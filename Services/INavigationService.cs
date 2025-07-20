using System;
using System.Windows.Controls;

namespace MiniMartManager.Services
{
    public interface INavigationService
    {
        void NavigateTo<TView, TViewModel>(Func<TViewModel> viewModelFactory) where TView : UserControl, new() where TViewModel : class;
    }
}
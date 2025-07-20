using System;
using System.Globalization;
using System.Windows.Data;
using MiniMartManager.Models;

namespace MiniMartManager.Converters
{
    public class UserToUsernameConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is User user)
            {
                return user.Username;
            }
            return "(N/A)";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
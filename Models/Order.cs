using MiniMartManager.Core;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace MiniMartManager.Models
{
    public class Order : BaseModel
    {
        public DateTime OrderDate { get; set; }
        public int UserId { get; set; } // User who made the sale
        public User User { get; set; } = new User();
        public decimal TotalAmount { get; set; }
        public ICollection<OrderDetail> OrderDetails { get; set; } = new ObservableCollection<OrderDetail>();
        public OrderStatus Status { get; set; }
    }

    public enum OrderStatus
    {
        Pending,
        Processing,
        Completed,
        Cancelled
    }
}
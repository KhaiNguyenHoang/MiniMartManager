using MiniMartManager.Core;
using System.Collections.Generic;

namespace MiniMartManager.Models
{
    public class Category : BaseModel
    {
        public string Name { get; set; } = string.Empty;
        public ICollection<Product> Products { get; set; } = new List<Product>();
    }
}

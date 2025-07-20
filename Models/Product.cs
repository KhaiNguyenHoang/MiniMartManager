using MiniMartManager.Core;

namespace MiniMartManager.Models
{
    public class Product : BaseModel
    {
        public string Name { get; set; } = string.Empty;
        public string Barcode { get; set; } = string.Empty;
        public decimal Price { get; set; }
        public int StockQuantity { get; set; }

        public int CategoryId { get; set; }
        public Category? Category { get; set; }
    }
}

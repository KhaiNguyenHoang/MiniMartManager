using MiniMartManager.Core;

namespace MiniMartManager.Models
{
    public class User : BaseModel
    {
        public string Username { get; set; } = string.Empty;
        public string HashedPassword { get; set; } = string.Empty;
        public string Role { get; set; } = string.Empty;
    }
}

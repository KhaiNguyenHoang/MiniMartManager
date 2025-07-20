using Microsoft.EntityFrameworkCore;
using MiniMartManager.Models;

namespace MiniMartManager.Data
{
    public class MiniMartDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // Replace with your actual connection string
            optionsBuilder.UseSqlServer("Server=localhost;Database=MiniMartManager;TrustServerCertificate=True;User Id=sa;Password=123456;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Seed initial data (optional but recommended)
            modelBuilder.Entity<Category>().HasData(
                new Category { Id = 1, Name = "Đồ uống" },
                new Category { Id = 2, Name = "Thực phẩm khô" },
                new Category { Id = 3, Name = "Hóa mỹ phẩm" }
            );

            // Seed default admin user
            modelBuilder.Entity<User>().HasData(
                new User { Id = 1, Username = "admin", HashedPassword = BCrypt.Net.BCrypt.HashPassword("admin"), Role = "Admin" }
            );
        }
    }
}

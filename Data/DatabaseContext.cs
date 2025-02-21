using Microsoft.EntityFrameworkCore;
using Flowershop_Strakova.Entities;

namespace Flowershop_Strakova.Data
{
    public class DatabaseContext : DbContext
    {
        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }


        override protected void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=localhost;Database=dbFlowerShop;Integrated Security=true;TrustServerCertificate=True;");
        }
    }
}

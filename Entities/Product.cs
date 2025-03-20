using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    public class Product
    {
        [Key]
        [Column("Id")]
        public int Id { get; set; }
        [Column("Name")]
        public string Name { get; set; }
        [Column("CategoryId")]
        public int CategoryId { get; set; }
        [Column("Description")]
        public string Description { get; set; }
        [Column("Price")]
        public decimal Price { get; set; }
        [Column("StorageAmount")]
        public int StorageAmount { get; set; }
        [Column("ImageUrl")]
        public string ImageUrl { get; set; }
        [Column("Rating")]
        public int Rating { get; set; }
        [Column("RatingCount")]
        public int RatingCount { get; set; }
        [Column("IsTopProduct")]
        public bool IsTopProduct { get; set; }




        public Product()
        {
            Name = string.Empty;
            CategoryId = 0;
            Description = string.Empty;
            Price = 0;
            StorageAmount = 0;
            ImageUrl = string.Empty;
            Rating = 0;
            RatingCount = 0;
            IsTopProduct = false;
        }

        public Product(string name, int categoryId, string description, decimal price, int storageAmount, string imageUrl, bool isTopProduct)
        {
            Name = name;
            CategoryId = categoryId;
            Description = description;
            Price = price;
            StorageAmount = storageAmount;
            ImageUrl = imageUrl;
            IsTopProduct = isTopProduct;
        }

        public Product(string name, int categoryId, string description, decimal price, int storageAmount, string imageUrl, int rating, int ratingCount, bool isTopProduct)
        {
            Name = name;
            CategoryId = categoryId;
            Description = description;
            Price = price;
            StorageAmount = storageAmount;
            ImageUrl = imageUrl;
            Rating = rating;
            RatingCount = ratingCount;
            IsTopProduct = isTopProduct;
        }
    }
}

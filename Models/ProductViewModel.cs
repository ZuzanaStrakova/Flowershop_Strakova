namespace Flowershop_Strakova.Models
{
    public class ProductViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int StorageAmount { get; set; }
        public string ImageUrl { get; set; }
        public double Rating { get; set; }
        public int RatingCount { get; set; }
        public bool IsTopProduct { get; set; }


        public ProductViewModel()
        {
            Id = 0;
            Name = string.Empty;
            Description = string.Empty;
            Price = 0;
            StorageAmount = 0;
            ImageUrl = string.Empty;
            Rating = 0;
            RatingCount = 0;
            IsTopProduct = false;
        }

        public ProductViewModel(int id, string name, string description, decimal price, int storageAmount, string imageUrl, double rating, int ratingCount, bool isTopProduct)
        {
            Id = id;
            Name = name;
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

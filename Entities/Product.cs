namespace Flowershop_Strakova.Entities
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int CategoryId { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int Amount { get; set; }
        public string ImageUrl { get; set; }


        public Product(int id, string name, int categoryId, string description, decimal price, int amount, string imageUrl)
        {
            Id = id;
            Name = name;
            CategoryId = categoryId;
            Description = description;
            Price = price;
            Amount = amount;
            ImageUrl = imageUrl;
        }
    }
}

namespace Flowershop_Strakova.Models
{
    public class ShoppingCartItemViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public string ImageUrl { get; set; }


        public ShoppingCartItemViewModel()
        {
            Id = 0;
            Name = string.Empty;
            Price = 0;
            ImageUrl = string.Empty;
        }

        public ShoppingCartItemViewModel(int id, string name, decimal price, string imageUrl)
        {
            Id = id;
            Name = name;
            Price = price;
            ImageUrl = imageUrl;
        }
    }
}

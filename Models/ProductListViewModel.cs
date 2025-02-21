using Flowershop_Strakova.Entities;

namespace Flowershop_Strakova.Models
{
    public class ProductListViewModel
    {
        public List<Category> Categories { get; set; } = new List<Category>();
        public List<Product> Products { get; set; } = new List<Product>();

        public int? SelectedCategoryId { get; set; }
    }
}

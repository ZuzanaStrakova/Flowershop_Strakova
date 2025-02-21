namespace Flowershop_Strakova.Entities
{
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int? ParentCategoryId { get; set; }

        public List<Category> Children { get; set; } = new List<Category>();


        public Category()
        {
            Id = 0;
            Name = "";
            ParentCategoryId = null;
        }

        public Category(int id, string name, int parentCategoryId)
        {
            Id = id;
            Name = name;
            ParentCategoryId = parentCategoryId;
        }
    }
}

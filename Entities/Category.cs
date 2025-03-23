using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    [Table("Categories")]
    public class Category
    {
        [Key]
        [Column("Id")]
        public int Id { get; set; }
        [Column("Name")]
        public string Name { get; set; }
        [Column("ParentCategoryId")]
        public int? ParentCategoryId { get; set; }


        [ForeignKey("ParentCategoryId")]
        public virtual Category Parent { get; set; }

        [InverseProperty("Parent")]
        public virtual List<Category> Children { get; set; } = new List<Category>();



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

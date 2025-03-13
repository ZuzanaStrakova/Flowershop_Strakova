using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    [Table("Comments")]
    public class Comment
    {
        [Key]
        [Column("Id")]
        public int Id { get; set; }
        [Column("ProductId")]
        public int ProductId { get; set; }
        [Column("Rating")]
        public int Rating { get; set; }
        [Column("CreatedAt")]
        public DateTime CreatedAt { get; set; }
        [Column("Text")]
        public string Text { get; set; }



        public Comment()
        {
            ProductId = 0;
            Rating = 0;
            CreatedAt = DateTime.Now;
            Text = string.Empty;
        }

        public Comment(int productId, int rating, string text)
        {
            ProductId = productId;
            Rating = rating;
            CreatedAt = DateTime.Now;
            Text = text;
        }

        public Comment(int productId, int rating, DateTime createdAt, string text)
        {
            ProductId = productId;
            Rating = rating;
            CreatedAt = createdAt;
            Text = text;
        }
    }
}

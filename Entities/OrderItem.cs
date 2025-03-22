using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    [Table("OrderItems")]
    public class OrderItem
    {
        [Column("Id")]
        public int Id { get; set; }
        [Column("OrderId")]
        public int OrderId { get; set; }
        [Column("ProductId")]
        public int ProductId { get; set; }
        [Column("ProductPrice")]
        public decimal ProductPrice { get; set; }
        [Column("Quantity")]
        public int Quantity { get; set; }
    }
}

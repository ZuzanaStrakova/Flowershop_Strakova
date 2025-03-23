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


        public OrderItem()
        {
            Id = 0;
            OrderId = 0;
            ProductId = 0;
            ProductPrice = 0;
            Quantity = 0;
        }

        public OrderItem(int id, int orderId, int productId, decimal productPrice, int quantity)
        {
            Id = id;
            OrderId = orderId;
            ProductId = productId;
            ProductPrice = productPrice;
            Quantity = quantity;
        }
    }
}

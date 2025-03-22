using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    [Table("ShoppingCarts")]
    public class ShoppingCart
    {
        [Column("Id")]
        public int Id { get; set; }
        [Column("AccountId")]
        public int AccountId { get; set; }
        [Column("ProductId")]
        public int ProductId { get; set; }
        [Column("Quantity")]
        public int Quantity { get; set; }
        public virtual Account Account { get; set; }
        public virtual Product Product { get; set; }

        public ShoppingCart()
        {
            Id = 0;
            AccountId = 0;
            ProductId = 0;
            Quantity = 0;
        }

        public ShoppingCart(int id, int accountId, int productId, int quantity, Account account, Product product)
        {
            Id = id;
            AccountId = accountId;
            ProductId = productId;
            Quantity = quantity;
            Account = account;
            Product = product;
        }
    }
}

using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    [Table("Orders")]
    public class Order
    {
        [Column("Id")]
        public int Id { get; set; }
        [Column("AccountId")]
        public int AccountId { get; set; }
        [Column("DeliveryAdress")]
        public string DeliveryAdress { get; set; }
        [Column("Email")]
        public string Email { get; set; }
        [Column("Phone")]
        public string Phone { get; set; }
        [Column("DeliveryMethod")]
        public string DeliveryMethod { get; set; }
        [Column("PaymentMethod")]
        public string PaymentMethod { get; set; }
        [Column("Status")]
        public string Status { get; set; }
        [Column("OrderDate")]
        public DateTime OrderDate { get; set; }



    }
}

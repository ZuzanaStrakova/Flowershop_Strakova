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
        public virtual List<OrderItem> OrderItems { get; set; }



        public Order()
        {
            Id = 0;
            AccountId = 0;
            DeliveryAdress = string.Empty;
            Email = string.Empty;
            Phone = string.Empty;
            DeliveryMethod = string.Empty;
            PaymentMethod = string.Empty;
            Status = string.Empty;
            OrderDate = DateTime.Now;
            OrderItems = new List<OrderItem>();
        }

        public Order(int id, int accountId, string deliveryAdress, string email, string phone, string deliveryMethod, string paymentMethod, string status, DateTime orderDate, List<OrderItem> orderItems)
        {
            Id = id;
            AccountId = accountId;
            DeliveryAdress = deliveryAdress;
            Email = email;
            Phone = phone;
            DeliveryMethod = deliveryMethod;
            PaymentMethod = paymentMethod;
            Status = status;
            OrderDate = orderDate;
            OrderItems = orderItems;
        }
    }
}

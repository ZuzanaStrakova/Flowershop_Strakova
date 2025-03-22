using System.ComponentModel.DataAnnotations.Schema;

namespace Flowershop_Strakova.Entities
{
    [Table("Account")]
    public class Account
    {
        [Column("Id")]
        public int Id { get; set; }
        [Column("Username")]
        public string Username { get; set; }
        [Column("Password")]
        public string Password { get; set; }
        [Column("Role")]
        public string Role { get; set; }
        [Column("Adress")]
        public string Adress { get; set; }
        [Column("Email")]
        public string Email { get; set; }
        [Column("Phone")]
        public string Phone { get; set; }

        public Account()
        {
            Id = 0;
            Username = string.Empty;
            Password = string.Empty;
            Role = string.Empty;
            Adress = string.Empty;
            Email = string.Empty;
            Phone = string.Empty;
        }

        public Account(int id, string username, string password, string role, string adress, string email, string phone)
        {
            Id= id;
            Username = username;
            Password = password;
            Role = role;
            Adress = string.Empty;
            Email = string.Empty;
            Phone = string.Empty;
        }
    }
}

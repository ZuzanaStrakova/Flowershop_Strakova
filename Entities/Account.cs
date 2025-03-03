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
        [Column("Token")]
        public string Token { get; set; }

        public Account()
        {
            Id = 0;
            Username = string.Empty;
            Password = string.Empty;
            Role = string.Empty;
            Token = string.Empty;
        }

        public Account(int id, string username, string password, string role, string token)
        {
            Id= id;
            Username = username;
            Password = password;
            Role = role;
            Token = token;
        }
    }
}

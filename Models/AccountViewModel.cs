using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Flowershop_Strakova.Models
{
    public class AccountViewModel
    {
        [HiddenInput]
        [BindNever]
        public int Id { get; set; }
        [Required]
        [MaxLength(64)]
        [RegularExpression(@"^[a-zA-Z0-9]+$", ErrorMessage = "Username může obsahovat pouze písmena a číslice.")]
        public string Username { get; set; }
        [Required]
        [MinLength(5, ErrorMessage = "Hodnota musí obsahovat alespoň 5 znaků.")]
        [MaxLength(128)]
        [PasswordPropertyText]
        public string Password { get; set; }
        [HiddenInput]
        [RegularExpression("^(User|Admin)$", ErrorMessage = "Role musí být buď 'User' nebo 'Admin'.")]
        public string Role { get; set; } = "User";
        [Required]
        [MaxLength(200)]
        public string Adress { get; set; }
        [Required]
        [MaxLength(200)]
        [RegularExpression(@"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$", ErrorMessage = "Zadejte platný e-mail.")]
        public string Email { get; set; }
        [Required]
        [MaxLength(16)]
        [RegularExpression(@"^\+?[\d\s\-()]{8,16}$", ErrorMessage = "Zadejte platné telefonní číslo.")]
        public string Phone { get; set; }

        public AccountViewModel()
        {
            Id = 0;
            Username = string.Empty;
            Password = string.Empty;
            Role = "User";
            Adress = string.Empty;
            Email = string.Empty;
            Phone = string.Empty;
        }

        public AccountViewModel(int id, string username, string password, string role, string adress, string email, string phone)
        {
            Id = id;
            Username = username;
            Password = password;
            Role = role;
            Adress = adress;
            Email = email;
            Phone = phone;
        }
    }
}

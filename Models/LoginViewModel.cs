﻿using System.ComponentModel.DataAnnotations;

namespace Flowershop_Strakova.Models
{
    public class LoginViewModel
    {
        [Required]
        [MaxLength(64)]
        public string Username { get; set; }

        [Required]
        [MaxLength(128)]
        public string Password { get; set; }

        public LoginViewModel()
        {
            Username = string.Empty;
            Password = string.Empty;
        }
    }
}

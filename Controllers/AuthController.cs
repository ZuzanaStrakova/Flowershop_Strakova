using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Data;
using Flowershop_Strakova.Entities;
using Flowershop_Strakova.Helpers;
using Flowershop_Strakova.Models;

namespace Flowershop_Strakova.Controllers
{
    public class AuthController : BaseController
    {
        private DatabaseContext _context = new DatabaseContext();

        public IActionResult Login()
        {
            return View(new LoginViewModel());
        }

        [HttpPost]
        public IActionResult Login(LoginViewModel loginViewModel)
        {


            if (!ModelState.IsValid)
            {
                return View(loginViewModel);
            }

            Account? account = _context.Accounts.SingleOrDefault(a => a.Username == loginViewModel.Username);

            if (account == null || account.Password != SHA256Helper.HashPassword(loginViewModel.Password))
            {
                TempData["Message"] = "Wrong username or password!";
                TempData["MessageType"] = "danger";
                return View(loginViewModel);
            }

            HttpContext.Session.SetString("User", loginViewModel.Username);
            HttpContext.Session.SetString("Role", account.Role);
            HttpContext.Session.SetInt32("UserId", account.Id);

            if (account.Role == "Admin")
            {
                return RedirectToAction("Index", "Admin");
            }
            else
            {
                return RedirectToAction("Index", "Products");
            }
        }


        public IActionResult Logout()
        {
            HttpContext.Session.Remove("User");

            return RedirectToAction("Login", "Auth");
        }


        [HttpGet]
        public IActionResult Register()
        {
            AccountViewModel model = new AccountViewModel();

            return View(model);
        }


        [HttpPost]
        public IActionResult Register(AccountViewModel model)
        {
            if (_context.Accounts.Where(a => a.Username == model.Username).Count() > 0)
            {
                TempData["Message"] = "User with this username already exists!";
                TempData["MessageType"] = "danger";
                ModelState.AddModelError("Username", "Uživatel s tímto jménem již existuje!");
            }

            if (!ModelState.IsValid)
            {
                return View(model);
            }


            Account account = new Account
            {
                Username = model.Username,
                Password = SHA256Helper.HashPassword(model.Password),
                Role = "User",
                Adress = model.Adress,
                Email = model.Email,
                Phone = model.Phone
            };

            _context.Accounts.Add(account);
            _context.SaveChanges();

            return RedirectToAction("Login", "Auth");
        }
    }
}

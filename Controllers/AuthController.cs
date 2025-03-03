using Flowershop_Strakova.Models;
using Microsoft.AspNetCore.Mvc;

namespace Flowershop_Strakova.Controllers
{
    public class AuthController : Controller
    {
        [HttpGet]
        public IActionResult Login()
        {
            return View(new LoginViewModel());
        }

        [HttpPost]
        public IActionResult Login(LoginViewModel loginViewModel)
        {
            return View();
        }
    }
}

using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Controllers;

namespace Flowershop_Strakova.Controllers
{
    public class CartController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult AddToCart()
        {
            return RedirectToAction("Index");
        }

        public IActionResult RemoveFromCart()
        {
            return RedirectToAction("Index");
        }
    }
}

using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Controllers;
using Microsoft.EntityFrameworkCore.Storage;
using Flowershop_Strakova.Data;
using Flowershop_Strakova.Entities;

namespace Flowershop_Strakova.Controllers
{
    public class CartController : Controller
    {
        DatabaseContext _context = new DatabaseContext();

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult AddToCart(int productId)
        {
            int userId = HttpContext.Session.GetInt32("UserId") ?? 0;

            if (userId == 0) 
            { 
                return RedirectToAction("Login", "Auth"); 
            }

            ShoppingCart? row = _context.ShoppingCarts.Where(sc => sc.AccountId == userId && sc.ProductId == productId).FirstOrDefault();

            if (row != null)
            {
                row.Quantity++;
                _context.ShoppingCarts.Update(row);
            }
            else
            {
                _context.ShoppingCarts.Add(new ShoppingCart
                {
                    AccountId = userId,
                    ProductId = productId,
                    Quantity = 1
                });
            }
            _context.SaveChanges();
            return RedirectToAction("Index", "Products");
        }

        public IActionResult RemoveFromCart()
        {
            return RedirectToAction("Index", "Products");
        }
    }
}

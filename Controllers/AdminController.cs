using Flowershop_Strakova.Data;
using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Entities;
using Flowershop_Strakova.Models;

namespace Flowershop_Strakova.Controllers
{
    public class AdminController : Controller
    {
        DatabaseContext _context = new DatabaseContext();

        public IActionResult Index()
        {
            return View();
        }

        // Orders
        // ===============================================

        public IActionResult Orders()
        {
            List<Order> orders = _context.Orders.ToList();

            return View(orders);
        }

        public IActionResult EditOrderStatus()
        {
            return RedirectToAction("Orders");
        }

        // Categories
        // ===============================================

        public IActionResult Categories()
        {
            List<Category> categories = _context.Categories.ToList();

            return View(categories);
        }

        public IActionResult AddCategory()
        {
            return RedirectToAction("Categories");
        }

        public IActionResult EditCategory()
        {
            return RedirectToAction("Categories");
        }

        public IActionResult DeleteCategory()
        {


            return RedirectToAction("Categories");
        }

        // Products
        // ===============================================

        public IActionResult Products()
        {
            return View();
        }


        // Users
        // ===============================================

        public IActionResult Users()
        {
            List<AccountViewModel> users = _context.Accounts.Select(a => new AccountViewModel(a.Id, a.Username, a.Password, a.Role, a.Adress, a.Email, a.Phone)).ToList();

            return View(users);
        }

        public IActionResult AddUser()
        {
            return RedirectToAction("Register", "Admin");
        }

        public IActionResult Register()
        {
            return View();
        }

        public IActionResult EditUser()
        {
            return View();
        }

        public IActionResult UpdateRole(int userId, string role)
        {
            var user = _context.Accounts.Find(userId);

            if (user != null)
            {
                user.Role = role;
                _context.SaveChanges();
            }

            return RedirectToAction("Users");
        }

        public IActionResult DeleteUser()
        {
            return View();
        }
    }
}

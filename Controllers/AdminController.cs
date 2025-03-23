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

        [HttpGet]
        public IActionResult EditCategory(int categoryId)
        {
            Category categoryModel = _context.Categories.Find(categoryId);

            return View("EditCategory", categoryModel);
        }

        [HttpPost]
        public IActionResult EditCategory(Category model)
        {
            _context.Categories.Update(model);
            _context.SaveChanges();

            return RedirectToAction("Categories");
        }

        private void DeleteAllProductsByCategory(int categoryId)
        {
            var products = _context.Products.Where(p => p.CategoryId == categoryId);

            foreach(var product in products)
            {
                _context.Products.Remove(product);
            }
            _context.SaveChanges();
        }

        public IActionResult DeleteCategory(int categoryId)
        {
            var category = _context.Categories.Find(categoryId);

            var children = _context.Categories.Where(c => c.ParentCategoryId == categoryId).ToList();
            // Pokud existují podkategorie, smažou se také
            foreach (var child in children)
            {
                DeleteAllProductsByCategory(child.Id);
                _context.Categories.Remove(child);
                _context.SaveChanges();
            }

            DeleteAllProductsByCategory(category.Id);
            _context.Categories.Remove(category);
            _context.SaveChanges();

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

        public IActionResult RegisterUser()
        {


            return View();
        }

        public IActionResult EditUser(int id)
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

        private void DeleteAllShoppingCartsByUser(int userId)
        {
            var carts = _context.ShoppingCarts.Where(c => c.AccountId == userId);
            foreach (var cart in carts)
            {
                _context.ShoppingCarts.Remove(cart);
            }
            _context.SaveChanges();
        }

        private void DeleteAllOrdersByUser(int userId)
        {
            var orders = _context.Orders.Where(c => c.AccountId == userId);
            foreach (var order in orders)
            {
                DeleteOrder(order.Id);
            }
            _context.SaveChanges();
        }

        private void DeleteOrder(int orderId)
        {
            var items = _context.OrderItems.Where(c => c.OrderId == orderId);
            foreach (var item in items)
            {
                _context.OrderItems.Remove(item);
                _context.SaveChanges();
            }

            var order = _context.Orders.Find(orderId);
            _context.Orders.Remove(order);
            _context.SaveChanges();
        }

        public IActionResult DeleteUser(int id)
        {
            Account user = _context.Accounts.Find(id);

            DeleteAllOrdersByUser(id);
            DeleteAllShoppingCartsByUser(id);
            _context.Accounts.Remove(user);
            _context.SaveChanges();

            return RedirectToAction("Users");
        }
    }
}

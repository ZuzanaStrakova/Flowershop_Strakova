using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Controllers;
using Microsoft.EntityFrameworkCore.Storage;
using Flowershop_Strakova.Data;
using Flowershop_Strakova.Entities;
using Flowershop_Strakova.Models;
using System.Data;
using System.Numerics;

namespace Flowershop_Strakova.Controllers
{
    public class CartController : Controller
    {
        DatabaseContext _context = new DatabaseContext();

        public IActionResult Index()
        {
            int userId = HttpContext.Session.GetInt32("UserId") ?? 0;

            if (userId == 0)
            {
                return RedirectToAction("Login", "Auth");
            }

            var cart = _context.ShoppingCarts.Where(sc => sc.AccountId == userId).Select(c => new ShoppingCartItemViewModel
            {
                Id = c.Id,
                Name = c.Product.Name,
                Price = c.Product.Price,
                Quantity = c.Quantity,
                ImageUrl = c.Product.ImageUrl
            }).ToList();

            return View(cart);
        }

        [HttpPost]
        public IActionResult Index(List<ShoppingCartItemViewModel> model)
        {
            foreach(var item in model)
            {
                _context.ShoppingCarts.Update(new ShoppingCart
                {
                    Id = item.Id,
                    Quantity = item.Quantity
                });
            }
            _context.SaveChanges();

            return RedirectToAction("Order");
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



            var referer = Request.Headers["Referer"].ToString();

            if (!string.IsNullOrEmpty(referer))
            {
                return Redirect(referer);
            }
            return RedirectToAction("Index", "Products");
        }



        public IActionResult RemoveFromCart(int shoppingCartItemId)
        {
            ShoppingCart? row = _context.ShoppingCarts.Find(shoppingCartItemId);

            if(row != null)
            {
                _context.ShoppingCarts.Remove(row);
                _context.SaveChanges();
            }
            

            var referer = Request.Headers["Referer"].ToString();

            if (!string.IsNullOrEmpty(referer))
            {
                return Redirect(referer);
            }
            return RedirectToAction("Index", "Products");
        }


        //public IActionResult Checkout()
        //{
        //    int userId = HttpContext.Session.GetInt32("UserId") ?? 0;
        //    if (userId == 0)
        //    {
        //        return RedirectToAction("Login", "Auth");
        //    }
        //    var cart = _context.ShoppingCarts.Where(sc => sc.AccountId == userId).ToList();
        //    foreach (var item in cart)
        //    {
        //        _context.ShoppingCarts.Remove(item);
        //    }
        //    _context.SaveChanges();
        //    return RedirectToAction("Index", "Products");
        //}

        [HttpGet]
        public IActionResult Order()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Order(string delivery, string payment)
        {
            TempData["Delivery"] = delivery;
            TempData["Payment"] = payment;


            return RedirectToAction("OrderBillingInfo");
        }

        [HttpGet]
        public IActionResult OrderBillingInfo()
        {
            Account account = _context.Accounts.Find(HttpContext.Session.GetInt32("UserId") ?? 0);

            AccountViewModel model = new AccountViewModel()
            {
                Id = account.Id,
                Username = account.Username,
                Email = account.Email,
                Phone = account.Phone,
                Adress = account.Adress
            };

            return View(model);
        }

        [HttpPost]
        public IActionResult OrderBillingInfo(string email, string phoneNumber, string fullAddress)
        {

            var deliveryResult = TempData.TryGetValue("Delivery", out object delivery);
            var paymentResult = TempData.TryGetValue("Payment", out object payment);

            if (!deliveryResult || !paymentResult)
            {
                return RedirectToAction("Order");
            }

            var order = new Order
            {
                Id = 0,
                AccountId = HttpContext.Session.GetInt32("UserId") ?? 0,
                Email = email,
                Phone = phoneNumber,
                DeliveryAdress = fullAddress,
                DeliveryMethod = (string)delivery,
                PaymentMethod = (string)payment,
                Status = "New",
                OrderDate = DateTime.Now
            };

            _context.Orders.Add(order);
            _context.SaveChanges();


            var orderItems = _context.ShoppingCarts.Where(sc => sc.AccountId == order.AccountId).Select(c => new OrderItem
            {
                Id = 0,
                OrderId = order.Id,
                ProductId = c.ProductId,
                ProductPrice = c.Product.Price,
                Quantity = c.Quantity
            }).ToList();

            _context.OrderItems.AddRange(orderItems);
            _context.SaveChanges();


            // nezapomenout vyprázdnit košík
            _context.ShoppingCarts.RemoveRange(_context.ShoppingCarts.Where(sc => sc.AccountId == order.AccountId));
            _context.SaveChanges();

            TempData["OrderId"] = order.Id;

            return RedirectToAction("OrderFinished");
        }

        public IActionResult OrderFinished()
        {
            if(!TempData.TryGetValue("OrderId", out object orderId))
            {
                return RedirectToAction("Index", "Products");
            }

            var order = _context.Orders.Find((int)orderId);

            order.OrderItems.AddRange(_context.OrderItems.Where(x => x.OrderId == order.Id));

            return View(order);
        }   
    }
}

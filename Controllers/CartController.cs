﻿using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Controllers;
using Microsoft.EntityFrameworkCore.Storage;
using Flowershop_Strakova.Data;
using Flowershop_Strakova.Entities;
using Flowershop_Strakova.Models;

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
                Price = c.ProductId,
                Quantity = c.Quantity,
                ImageUrl = c.Product.ImageUrl
            }).ToList();

            return View(cart);
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
            ViewBag.Delivery = delivery;
            ViewBag.Payment = payment;

            return View();
        }

        [HttpGet]
        public IActionResult OrderBillingInfo()
        {
            return View();
        }

        [HttpPost]
        public IActionResult OrderBillingInfo(string email, string phoneNumber, string fullAddress)
        {

            var order = new Order
            {
                Id = 0,
                AccountId = HttpContext.Session.GetInt32("UserId") ?? 0,
                Email = email,
                Phone = phoneNumber,
                DeliveryAdress = fullAddress,
                DeliveryMethod = ViewBag.Delivery,
                PaymentMethod = ViewBag.Payment,
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

            return View();
        }
    }
}

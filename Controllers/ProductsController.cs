﻿using Flowershop_Strakova.Data;
using Flowershop_Strakova.Models;
using Flowershop_Strakova.Controllers;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;
using Flowershop_Strakova.Entities;

namespace Flowershop_Strakova.Controllers
{
    public class ProductsController : Controller
    {
        private DatabaseContext _context = new DatabaseContext();


        public IActionResult Index()
        {
            List<ProductViewModel> products = _context.Products.Select(p => new ProductViewModel
            {
                Id = p.Id,
                Name = p.Name,
                Description = p.Description,
                Price = p.Price,
                ImageUrl = p.ImageUrl,
                Rating = _context.Comments.Where(c => c.ProductId == p.Id).Sum(c => c.Rating),
                RatingCount = _context.Comments.Where(c => c.ProductId == p.Id).Count(),
                IsTopProduct = p.IsTopProduct,
                StorageAmount = p.StorageAmount
            }).ToList();

            foreach(var product in products)
            {
                if (product.RatingCount != 0)
                {
                    product.Rating = product.Rating / product.RatingCount;
                }
            }

            return View(products);
        }


        public IActionResult Details(int id)
        {
            var product = _context.Products.Find(id);

            ProductViewModel model = new ProductViewModel
            {
                Id = product.Id,
                Name = product.Name,
                Description = product.Description,
                Price = product.Price,
                ImageUrl = product.ImageUrl,
                Rating = _context.Comments.Where(c => c.ProductId == product.Id).Sum(c => c.Rating),
                RatingCount = _context.Comments.Where(c => c.ProductId == product.Id).Count(),
                IsTopProduct = product.IsTopProduct,
                StorageAmount = product.StorageAmount
            };

            
            if (product.RatingCount != 0)
            {
                product.Rating = product.Rating / product.RatingCount;
            }
            

            return View(model);
        }

        
        public IActionResult Search(string query)
        {
            if (string.IsNullOrWhiteSpace(query))
            {
                // Pokud je vyhledávací dotaz prázdný, přesměrujeme na výpis všech produktů
                return RedirectToAction("Index");
            }

            // Vyhledáváme produkty podle názvu nebo popisu
            var products = _context.Products
                             .Where(p => p.Name.Contains(query) || p.Description.Contains(query))
                             .Select(p => new ProductViewModel
                              {
                                  Id = p.Id,
                                  Name = p.Name,
                                  Description = p.Description,
                                  Price = p.Price,
                                  ImageUrl = p.ImageUrl,
                                  Rating = _context.Comments.Where(c => c.ProductId == p.Id).Sum(c => c.Rating),
                                  RatingCount = _context.Comments.Where(c => c.ProductId == p.Id).Count(),
                                  IsTopProduct = p.IsTopProduct,
                                  StorageAmount = p.StorageAmount
                              })
                             .ToList();

            foreach (var product in products)
            {
                if (product.RatingCount != 0)
                {
                    product.Rating = product.Rating / product.RatingCount;
                }
            }

            // Zobrazíme výsledek ve view "Index", které očekává kolekci produktů
            return View("Index", products);
        }



        public IActionResult CategorySelected(int selectedCategory)
        {
            var products = _context.Products
                             .Where(c => c.CategoryId == selectedCategory)
                             .Select(p => new ProductViewModel
                             {
                                 Id = p.Id,
                                 Name = p.Name,
                                 Description = p.Description,
                                 Price = p.Price,
                                 ImageUrl = p.ImageUrl,
                                 Rating = _context.Comments.Where(c => c.ProductId == p.Id).Sum(c => c.Rating),
                                 RatingCount = _context.Comments.Where(c => c.ProductId == p.Id).Count(),
                                 IsTopProduct = p.IsTopProduct,
                                 StorageAmount = p.StorageAmount
                             })
                             .ToList();

            foreach (var product in products)
            {
                if (product.RatingCount != 0)
                {
                    product.Rating = product.Rating / product.RatingCount;
                }
            }

            return View("Index", products);
        }
    }
}

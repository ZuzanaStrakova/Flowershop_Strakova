using Flowershop_Strakova.Data;
using Flowershop_Strakova.Models;
using Flowershop_Strakova.Controllers;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;
using Flowershop_Strakova.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

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
                RatingCount = _context.Comments.Where(c => c.ProductId == p.Id).Count(),
                Rating = _context.Comments.Where(c => c.ProductId == p.Id).Sum(c => c.Rating),
                IsTopProduct = p.IsTopProduct,
                StorageAmount = p.StorageAmount
            }).ToList();

            foreach (var product in products)
            {
                if (product.RatingCount != 0)
                {
                    product.Rating = product.Rating / product.RatingCount;
                }
            }

            var categories = _context.Categories.Include("Children").ToList();
            ViewBag.Categories = categories;

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
                RatingCount = _context.Comments.Where(c => c.ProductId == product.Id).Count(),
                Rating = _context.Comments.Where(c => c.ProductId == product.Id).Sum(c => c.Rating),
                IsTopProduct = product.IsTopProduct,
                StorageAmount = product.StorageAmount
            };


            
            if (model.RatingCount != 0)
            {
                model.Rating = model.Rating / model.RatingCount;
            }
            


            return View(model);
        }


        public IActionResult Search(string query, int? selectedCategory)
        {
            // Vycházíme ze všech produktů
            var productsQuery = _context.Products.AsQueryable();

            // Pokud je zadán vyhledávací dotaz, filtrujeme podle názvu nebo popisu
            if (!string.IsNullOrWhiteSpace(query))
            {
                productsQuery = productsQuery.Where(p =>
                    p.Name.Contains(query) || p.Description.Contains(query));
            }

            // Pokud je zadána kategorie, filtrujeme produkty podle CategoryId
            if (selectedCategory.HasValue)
            {
                productsQuery = productsQuery.Where(p => p.CategoryId == selectedCategory.Value);
            }

            // Projekce do view modelu
            var products = productsQuery.Select(p => new ProductViewModel
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

            // Vypočítáme průměrné hodnocení, pokud existují recenze
            foreach (var product in products)
            {
                if (product.RatingCount != 0)
                {
                    product.Rating = product.Rating / product.RatingCount;
                }
            }

            // Pro dynamické zobrazení kategorií ve View
            var categories = _context.Categories.Include("Children").ToList();
            ViewBag.Categories = categories;

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

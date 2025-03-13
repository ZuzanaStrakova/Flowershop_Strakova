using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Models;
using Flowershop_Strakova.Entities;
using Flowershop_Strakova.Data;

namespace Flowershop_Strakova.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    private DatabaseContext _context = new DatabaseContext();

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public ActionResult ProductPage()
    {
        List<ProductViewModel> models = _context.Products.Select(p => new ProductViewModel
        {
            Id = p.Id,
            Name = p.Name,
            Description = p.Description,
            Price = p.Price,
            ImageUrl = p.ImageUrl,
            Rating = p.Rating,
            RatingCount = p.RatingCount,
            IsTopProduct = p.IsTopProduct,
            StorageAmount = p.StorageAmount
        }).ToList();

        return View(models);
    }


    public IActionResult Index()
    {
        var model = new ProductListViewModel();
        model.Categories = new List<Category>
        {
            new Category { Id = 1, Name = "Flowers" },
            new Category { Id = 2, Name = "Plants" },
            new Category { Id = 3, Name = "Pots" }
        };

        //model.Products = new List<Product>
        //{
        //    new Product(1, "Rose", 1, "Red rose", 10, 100, "rose.jpg"),
        //    new Product(2, "Tulip", 1, "Yellow tulip", 5, 50, "tulip.jpg"),
        //    new Product(3, "Cactus", 2, "Green cactus", 15, 30, "cactus.jpg"),
        //    new Product(4, "Orchid", 2, "Purple orchid", 20, 20, "orchid.jpg"),
        //    new Product(5, "Ceramic pot", 3, "Blue ceramic pot", 25, 10, "ceramic-pot.jpg"),
        //    new Product(6, "Plastic pot", 3, "Green plastic pot", 5, 100, "plastic-pot.jpg")
        //};

        return View(model);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}

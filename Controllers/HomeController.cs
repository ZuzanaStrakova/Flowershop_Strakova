using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Models;
using Flowershop_Strakova.Entities;
using Flowershop_Strakova.Data;

namespace Flowershop_Strakova.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
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

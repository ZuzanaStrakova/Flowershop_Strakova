using Flowershop_Strakova.Data;
using Microsoft.AspNetCore.Mvc;
using Flowershop_Strakova.Entities;

namespace Flowershop_Strakova.Controllers
{
    public class CommentsController : Controller
    {
        DatabaseContext _context = new DatabaseContext();

        public IActionResult CreateComment(int rating, string reviewText)
        {
            _context.Comments.Add(new Comment
            {
                ProductId = (int)TempData["CommentProductId"],
                Rating = rating,
                Text = reviewText
            });
            _context.SaveChanges();


            var referer = Request.Headers["Referer"].ToString();

            if (!string.IsNullOrEmpty(referer))
            {
                return Redirect(referer);
            }
            return RedirectToAction("Index", "Products");
        }
    }
}

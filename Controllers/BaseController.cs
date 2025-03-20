using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace Flowershop_Strakova.Controllers
{
    public class BaseController : Controller
    {
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            ViewBag.IsAuthenticated = HttpContext.Session.GetString("User") != null;
            ViewBag.Username = HttpContext.Session.GetString("User");
            base.OnActionExecuting(context);
        }
    }
}

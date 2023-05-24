using Microsoft.AspNetCore.Mvc;

namespace Watch_Store.Controllers
{
    [Area("Admin")]
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}


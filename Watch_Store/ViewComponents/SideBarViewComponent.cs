using Microsoft.AspNetCore.Mvc;
using Watch_Store.DataAccess;
namespace Watch_Store.ViewComponents
{

    public class SideBarViewComponent : ViewComponent
    {
        private ApplicationDbContext _context;
        public SideBarViewComponent(ApplicationDbContext context)
        {
            _context = context;
        }
        public IViewComponentResult Invoke()
        {
            var categoriesController = _context.Categories.ToList();

            return View(categoriesController);
        }
    }
}

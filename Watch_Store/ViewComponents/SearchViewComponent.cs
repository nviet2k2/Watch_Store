using Microsoft.AspNetCore.Mvc;
using Watch_Store.DataAccess;

namespace Watch_Store.ViewComponents
{
    [Area("Customer")]
    public class SearchViewComponent : ViewComponent
    {
        private ApplicationDbContext _context;
        public SearchViewComponent(ApplicationDbContext context)
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

using Microsoft.AspNetCore.Mvc;
using Watch_Store.DataAccess;

namespace Watch_Store.ViewComponents
{

	
	public class NavbarProductViewComponent : ViewComponent
	{
		private ApplicationDbContext _context;
		public NavbarProductViewComponent(ApplicationDbContext context)
		{
			_context = context;
		}
		public IViewComponentResult Invoke()
		{
			var categories = _context.Products.ToList();
			var category = categories.FirstOrDefault(); // lấy một đối tượng Category đầu tiên trong danh sách

			return View(category);
		}

	}
}

using Microsoft.AspNetCore.Mvc;
using Watch_Store.DataAccess;
using Watch_Store.Models;
using Watch_Store.Services;

namespace Watch_Store.ViewComponents
{
	
	public class NavbarALL : ViewComponent
	{
		
		private readonly IUnitOfWork _unitOfWork;
		public NavbarALL(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public IViewComponentResult Invoke()
		{
			List<Category> objCategoryList = _unitOfWork.Category.GetAll().ToList();
			return View(objCategoryList);
		}
	}
}

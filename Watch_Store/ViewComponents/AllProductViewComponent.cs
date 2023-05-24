using Microsoft.AspNetCore.Mvc;
using PagedList;
using Watch_Store.DataAccess;
using Watch_Store.Models;
using Watch_Store.Services;
using X.PagedList;

namespace Watch_Store.ViewComponents
{

	public class AllProductViewComponent : ViewComponent
	{
		private IUnitOfWork _unitOfWork;
		public AllProductViewComponent(IUnitOfWork unitOfWork)
		{
            _unitOfWork = unitOfWork;
		}
        public IViewComponentResult Invoke()
        {
           

            IEnumerable<Product> productList;
            productList = _unitOfWork.Product.GetAll(includeProperties: "Category");

           

            return View(productList);
        }

    }
}
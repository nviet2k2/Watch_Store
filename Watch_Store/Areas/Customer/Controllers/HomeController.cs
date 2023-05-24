using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Security.Claims;
using Watch_Store.Models;
using Watch_Store.Services;
using Watch_Store.Utility;
using PagedList;

namespace Watch_Store.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
		private readonly ILogger<HomeController> _logger;
		private readonly IUnitOfWork _unitOfWork;

		public HomeController(ILogger<HomeController> logger, IUnitOfWork unitOfWork)
		{
			_logger = logger;
			_unitOfWork = unitOfWork;
		}

		public IActionResult Index()
		{

			IEnumerable<Product> productList = _unitOfWork.Product.GetAll(includeProperties: "Category").OrderByDescending(p => p.CreateDateTime)
	.Take(4);
			return View(productList);
		}
        public IActionResult All()
        {

			IEnumerable<Product> productList = _unitOfWork.Product.GetAll(includeProperties: "Category");
            return View(productList);
        }
        public IActionResult Details(int productId)
		{
			ShoppingCart cart = new()
			{
                Product = _unitOfWork.Product.Get(u => u.Id == productId, includeProperties: "Category"),
				Count = 1,
				ProductId = productId
			};
			return View(cart);
		}
		public ActionResult ProductByCategory(int? page, int? catId)
		{
			int pageSize = 5;
			int pageNumber = (page ?? 1);
			IEnumerable<Product> productList;
			if (catId != null)
			{
				productList = _unitOfWork.Product.GetAll(p => p.CategoryId == catId, includeProperties: "Category");
			}
			else
			{
				productList = _unitOfWork.Product.GetAll(includeProperties: "Category");
			}
			IPagedList<Product> pagedList = productList.ToPagedList(pageNumber, pageSize);
			return View(pagedList);
		}


		[HttpPost]
		public ActionResult ProductByCategory(string keywords)
		{
			ViewData["CurrentFilter"] = keywords;
			var model = _unitOfWork.Product.Search(keywords);
			return View(model);
		}


		[HttpPost]
		[Authorize]
		public IActionResult Details(ShoppingCart shoppingCart)
		{
			var claimsIdentity = (ClaimsIdentity)User.Identity;
			var userId = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier).Value;
			shoppingCart.ApplicationUserId = userId;

			ShoppingCart cartFromDb = _unitOfWork.ShoppingCart.Get(u => u.ApplicationUserId == userId &&
			u.ProductId == shoppingCart.ProductId);

			if (cartFromDb != null)
			{
				//shopping cart exists
				cartFromDb.Count += shoppingCart.Count;
				_unitOfWork.ShoppingCart.Update(cartFromDb);
				_unitOfWork.Save();
			}
			else
			{
				//add cart record
				_unitOfWork.ShoppingCart.Add(shoppingCart);
				_unitOfWork.Save();
				HttpContext.Session.SetInt32(SD.SessionCart,
				_unitOfWork.ShoppingCart.GetAll(u => u.ApplicationUserId == userId).Count());
			}
			/*TempData["success"] = "Cart updated successfully";*/




			return RedirectToAction("Index","Cart");
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
}
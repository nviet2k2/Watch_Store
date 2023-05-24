using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using Watch_Store.Models;
using Watch_Store.Services;

namespace Watch_Store.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class OrderController : Controller
	{
		private readonly IUnitOfWork _unitOfWork;
        public OrderController(IUnitOfWork  unitOfWork)
        {
			_unitOfWork = unitOfWork;
        }
		[HttpGet]
        public IActionResult Index()
		{
			IEnumerable<OrderHeader> objOrderHeaders;
			var claimsIdentity = (ClaimsIdentity)User.Identity;
			var userId = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier).Value;

			objOrderHeaders = _unitOfWork.OrderHeader
				.GetAll(u => u.ApplicationUserId == userId, includeProperties: "ApplicationUser");

			return View(objOrderHeaders);
		}
		

	}
}

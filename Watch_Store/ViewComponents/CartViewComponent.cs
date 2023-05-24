using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;
using Watch_Store.DataAccess;
using Watch_Store.Models;
using Watch_Store.Models.ViewModels;
using Watch_Store.Services;
using Watch_Store.Utility;

namespace Watch_Store.ViewComponents
{
  
	[Authorize(Roles = SD.Role_Customer)]
	public class CartViewComponent  : ViewComponent
    {
        private readonly IUnitOfWork _unitOfWork;
        
        [BindProperty]
        public ShoppingCartVM ShoppingCartVM { get; set; }
        public CartViewComponent(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
		public IViewComponentResult Invoke()
		{
			if (User.Identity != null && User.Identity.IsAuthenticated)
			{

				var claimsIdentity = (ClaimsIdentity)User.Identity;
				var userId = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier).Value;

				ShoppingCartVM = new()
				{
					ShoppingCartList = _unitOfWork.ShoppingCart.GetAll(u => u.ApplicationUserId == userId,
					includeProperties: "Product"),
					OrderHeader = new()
				};

				foreach (var cart in ShoppingCartVM.ShoppingCartList)
				{
					cart.Price = GetPriceBasedOnQuantity(cart);
					ShoppingCartVM.OrderHeader.OrderTotal += (cart.Price * cart.Count);
				}

				return View(ShoppingCartVM);
			}

			// Người dùng chưa đăng nhập, trả về giỏ hàng trống
			ShoppingCartVM = new ShoppingCartVM
			{
				ShoppingCartList = new List<ShoppingCart>(),
				OrderHeader = new OrderHeader()
			};

			return View(ShoppingCartVM);
		}
		/*public IActionResult Remove(int cartId)
		{
			var cartFromDb = _unitOfWork.ShoppingCart.Get(u => u.Id == cartId, tracked: true);
			HttpContext.Session.SetInt32(SD.SessionCart, _unitOfWork.ShoppingCart
				.GetAll(u => u.ApplicationUserId == cartFromDb.ApplicationUserId).Count() - 1);
			_unitOfWork.ShoppingCart.Remove(cartFromDb);
			_unitOfWork.Save();
			return RedirectToAction("Index", "Detail");
		}*/
		private double GetPriceBasedOnQuantity(ShoppingCart shoppingCart)
        {

            return shoppingCart.Product.ProductPrice;


        }
    }
}

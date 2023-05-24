using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Watch_Store.Models;
using Watch_Store.Models.ViewModels;
using Watch_Store.Services;

namespace Watch_Store.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ReceiptController : Controller
	{

		private readonly IUnitOfWork _unitOfWork;
		private readonly IWebHostEnvironment _webHostEnvironment;
		public ReceiptController(IUnitOfWork unitOfWork, IWebHostEnvironment webHostEnvironment)
		{
			_unitOfWork = unitOfWork;
			_webHostEnvironment = webHostEnvironment;
		}
		public IActionResult Index()
		{
			List<Receipt> objReceipList = _unitOfWork.Receipt.GetAll().ToList(); ;

			return View(objReceipList);
		}
		[HttpGet]
		public IActionResult Upsert(int? id)
		{
			ReceiptVM productVM = new()
			{
				Productlist = _unitOfWork.Product.GetAll().Select(u => new SelectListItem
				{
					Text = u.ProductName,
					Value = u.Id.ToString()
				}),
				Receipt = new Receipt()
			};
			if (id == null || id == 0)
			{
				//create
				return View(productVM);
			}
			else
			{
				//update
				productVM.Receipt = _unitOfWork.Receipt.Get(u => u.Id == id);
				return View(productVM);
			}

		}
		[HttpPost]
		public IActionResult Upsert(ProductVM productVM, IFormFile? file)
		{
			if (ModelState.IsValid)
			{
				string wwwRootPath = _webHostEnvironment.WebRootPath;
				if (file != null)
				{
					string fileName = Guid.NewGuid().ToString() + Path.GetExtension(file.FileName);
					string productPath = Path.Combine(wwwRootPath, @"images\product");

					if (!string.IsNullOrEmpty(productVM.Product.ProductImage))
					{
						//delete the old image
						var oldImagePath =
							Path.Combine(wwwRootPath, productVM.Product.ProductImage.TrimStart('\\'));

						if (System.IO.File.Exists(oldImagePath))
						{
							System.IO.File.Delete(oldImagePath);
						}
					}

					using (var fileStream = new FileStream(Path.Combine(productPath, fileName), FileMode.Create))
					{
						file.CopyTo(fileStream);
					}

					productVM.Product.ProductImage = @"\images\product\" + fileName;
				}

				if (productVM.Product.Id == 0)
				{
					_unitOfWork.Product.Add(productVM.Product);
				}
				else
				{
					_unitOfWork.Product.Update(productVM.Product);
				}

				_unitOfWork.Save();
				/* TempData["success"] = "Product created successfully";*/
				return RedirectToAction("Index");
			}
			else
			{
				productVM.CategoryList = _unitOfWork.Category.GetAll().Select(u => new SelectListItem
				{
					Text = u.CategoryName,
					Value = u.Id.ToString()
				});
				return View(productVM);
			}
		}
	}
}

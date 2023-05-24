using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.DataAccess;

namespace Watch_Store.Services.implementation
{
	public class UnitOfWorkServices : IUnitOfWork

	{
		private ApplicationDbContext _db;
		public IProductService Product { get; private set; }
		public ICategoryService Category { get; private set; }
		public IShoppingCartService ShoppingCart { get; private set; }
		public IApplicationUserService ApplicationUser { get; private set; }
		public ICompanyService Company { get; private set; }
		public IOrderHeaderService OrderHeader { get; private set; }
		public IOrderDetailRepository OrderDetail { get; private set; }
		public IReceiptService Receipt { get; private set; }
		public UnitOfWorkServices(ApplicationDbContext db)
		{
			_db = db;
			ApplicationUser = new ApplicationUserServices(_db);
			ShoppingCart = new ShoppingCartServices(_db);
			Category = new CategoryServices(_db);
			Product = new ProductRepository(_db);
			Company = new CompanyServices(_db);
			OrderHeader = new OrderHeaderServices(_db);
			OrderDetail = new OrderDetailServices(_db);
			Receipt = new ReceiptServices(_db);
		}

		public void Save()
		{
			_db.SaveChanges();
		}
	}

}


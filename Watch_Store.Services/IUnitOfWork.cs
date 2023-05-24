using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Watch_Store.Services
{
	public interface IUnitOfWork
	{
		ICompanyService Company { get; }
		ICategoryService Category { get; }
		IProductService Product { get; }
		IShoppingCartService ShoppingCart { get; }
		IApplicationUserService ApplicationUser { get; }
		IOrderDetailRepository OrderDetail { get; }
		IOrderHeaderService OrderHeader { get; }
		IReceiptService Receipt { get; }
		void Save();
	}
}



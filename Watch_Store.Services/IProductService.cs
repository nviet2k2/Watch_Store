using Watch_Store.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;

namespace Watch_Store.Services
{
    public interface IProductService : Implementation<Product>
    {
        void Update(Product obj);
		IEnumerable<Product> Search(int catid, string keywords);
		IPagedList<Product> Search(string keywords, int page = 1, int pageSize = 1);
        bool Any(Func<Product, bool> predicate);
    }
}



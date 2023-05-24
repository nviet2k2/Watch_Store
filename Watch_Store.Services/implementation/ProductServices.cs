using Microsoft.EntityFrameworkCore;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.DataAccess;
using Watch_Store.Models;
using Watch_Store.Services.implementation;


namespace Watch_Store.Services.implementation
{
    public class ProductRepository : ImplementationService<Product>, IProductService
    {
        private ApplicationDbContext _db;
        public ProductRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

		public IEnumerable<Product> Search(int catid, string keywords)
		{
			var query = _db.Products
		   .Where(p => p.CategoryId == catid && p.ProductName.Contains(keywords));

			return query.ToList();
		}
        public bool Any(Func<Product, bool> predicate)
        {
            return _db.Products.Any(predicate);
        }


        public IPagedList<Product> Search(string keywords, int page = 1, int pageSize = 1)
		{
			var query = from product in _db.Products
						select product;

			if (!string.IsNullOrEmpty(keywords))
			{
				query = query.Where(p => p.ProductName.Contains(keywords));
			}

			var products = query.OrderBy(p => p.Id).ToPagedList(page, pageSize);
			return products;
		}

		public void Update(Product obj)
        {
            var objFromDb = _db.Products.FirstOrDefault(u => u.Id == obj.Id);
            if (objFromDb != null)
            {
                objFromDb.ProductName = obj.ProductName;
                objFromDb.ProductPrice = obj.ProductPrice;
                objFromDb.ProductDescription = obj.ProductDescription;
                objFromDb.CategoryId = obj.CategoryId;
                objFromDb.ProductQuantity = obj.ProductQuantity;


                if (obj.ProductImage != null)
                {
                    objFromDb.ProductImage = obj.ProductImage;
                }
            }
        }
    }
}




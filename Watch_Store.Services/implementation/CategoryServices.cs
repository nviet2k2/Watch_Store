using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.DataAccess;
using Watch_Store.Models;


namespace Watch_Store.Services.implementation
{
	public class CategoryServices : ImplementationService<Category>, ICategoryService
	{
		private ApplicationDbContext _db;
		public CategoryServices(ApplicationDbContext db) : base(db)
		{
			_db= db;
		}
        public void Update(Category obj)
        {
            _db.Categories.Update(obj);
        }
        /*	public async Task CreateAsSync(Category newCategory)
            {
                _context.categories.Add(newCategory);
                await _context.SaveChangesAsync();
            }

            public async Task DeleteById(int id)
            {
                var category = GetById(id);
                _context.categories.Remove(category);
                await _context.SaveChangesAsync();
            }

            public IEnumerable<Category> GetAlll()
            {
                return _context.categories.ToList();
            }

            public  Category GetById(int id)
            {
                return _context.categories.Where(m => m.CategoryId == id).FirstOrDefault();
            }

            public IEnumerable<SelectListItem> GetListCategory()
            {
                var list = _context.categories.Select(e => new SelectListItem
                {

                    Text = e.CategoryName,
                    Value = e.CategoryId.ToString(),
                });
                return list;
            }

            public async Task UpdateAsSync(Category newCategory)
            {
                _context.categories.Update(newCategory);
                await _context.SaveChangesAsync();
            }

            public async Task UpdateById(int id)
            {
                var category = GetById(id);
                if (category != null)
                {
                    _context.Update(category);
                    await _context.SaveChangesAsync();
                }
            }*/
    }
}


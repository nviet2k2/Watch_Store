using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.DataAccess;
using Watch_Store.Models;

namespace Watch_Store.Services.implementation
{
    public class CompanyServices : ImplementationService<Company>, ICompanyService 
        {
        private ApplicationDbContext _db;
        public CompanyServices(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        

        public void Update(Company obj)
        {
            _db.Companies.Update(obj);
        }
    }
}


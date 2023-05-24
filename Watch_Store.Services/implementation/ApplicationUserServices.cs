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
    public class ApplicationUserServices : ImplementationService<ApplicationUser>, IApplicationUserService {
        private ApplicationDbContext _db;
        public ApplicationUserServices(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
    }
}


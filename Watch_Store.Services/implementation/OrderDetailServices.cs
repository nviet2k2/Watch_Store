using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.DataAccess;
using Watch_Store.Models;
using Watch_Store.Services;
using Watch_Store.Services.implementation;


namespace Watch_Store.Services.implementation
{
    public class OrderDetailServices : ImplementationService<OrderDetail>, IOrderDetailRepository
    {
        private ApplicationDbContext _db;
        public OrderDetailServices(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        

        public void Update(OrderDetail obj)
        {
            _db.OrderDetails.Update(obj);
        }
    }
}


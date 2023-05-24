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
    public class OrderHeaderServices : ImplementationService<OrderHeader>, IOrderHeaderService {
        private ApplicationDbContext _db;
        public OrderHeaderServices(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        

        public void Update(OrderHeader obj)
        {
            _db.OrderHeaders.Update(obj);
        }

		public void UpdateStatus(int id, string orderStatus, string? paymentStatus = null) {
			var orderFromDb = _db.OrderHeaders.FirstOrDefault(u => u.Id == id);
            if (orderFromDb != null) {
                orderFromDb.OrderStatus = orderStatus;
                if (!string.IsNullOrEmpty(paymentStatus)) {
                    orderFromDb.PaymentStatus = paymentStatus;
                }
            }
		}

		public void UpdateStripePaymentID(int id, string sessionId, string paymentIntentId) {
			var orderFromDb = _db.OrderHeaders.FirstOrDefault(u => u.Id == id);
            if (!string.IsNullOrEmpty(sessionId)) {
                orderFromDb.SessionId= sessionId;
            }
			if (!string.IsNullOrEmpty(paymentIntentId)) {
				orderFromDb.PaymentIntentId= paymentIntentId;
                orderFromDb.PaymentDate = DateTime.Now;
			}
		}
	}
}



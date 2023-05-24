using Watch_Store.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.Services;

namespace Watch_Store.Services
{
    public interface IOrderHeaderService : Implementation<OrderHeader>
    {
        void Update(OrderHeader obj);
		void UpdateStatus(int id, string orderStatus, string? paymentStatus = null);
		void UpdateStripePaymentID(int id, string sessionId, string paymentIntentId);
	}
}


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.DataAccess;
using Watch_Store.Models;

namespace Watch_Store.Services.implementation
{
	public class ReceiptServices : ImplementationService<Receipt>, IReceiptService
	{
		private ApplicationDbContext _db;
		public ReceiptServices(ApplicationDbContext db) : base(db)
		{
			_db = db;
		}



		

		public void Update(Receipt obj)
		{
			_db.Receipts.Update(obj);
		}
	}
}

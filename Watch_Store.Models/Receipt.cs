using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Watch_Store.Models
{
	public class Receipt
	{
		public int Id { get; set; }
		public string ApplicationUserId { get; set; }

		public ApplicationUser ApplicationUser { get; set; }
		public DateTime CreateDateTime { get; set; } = DateTime.Now;
		public int Count { get; set; }
		public double Price { get; set; }
		public double Total { get; set; }
        public int ProductId { get; set; }
        public Product Product { get; set; }
    }
}

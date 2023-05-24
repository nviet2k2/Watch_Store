using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Watch_Store.Models.ViewModels
{
	public class ReceiptVM
	{
		public Receipt Receipt { get; set; }
		[ValidateNever]
		public IEnumerable<SelectListItem> Productlist { get; set; }
	}
}

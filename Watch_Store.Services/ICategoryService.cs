
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Watch_Store.Models;

namespace Watch_Store.Services
{
	public interface ICategoryService : Implementation<Category>
	{
        void Update(Category obj);

    }
}



using Watch_Store.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Watch_Store.Services
{
    public interface IShoppingCartService : Implementation<ShoppingCart>
    {
        void Update(ShoppingCart obj);
    }
}


using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;

namespace Watch_Store.Models
{
    public class Product
    {

        [Key]
        public int Id { get; set; }
        [Required]
        public string ProductName { get; set; }
        [Required]
        public string ProductDescription { get; set; }
        public double ProductPrice { get; set; }
        [Required]
        public int ProductQuantity { get; set; }
        [ValidateNever]
        public string ProductImage { get; set; }
        [ForeignKey("CategoryId")]
        
        public int CategoryId { get; set; }
        [ValidateNever]
        public Category Category { get; set; }
        public DateTime CreateDateTime { get; set; } = DateTime.Now;
        





    }
}

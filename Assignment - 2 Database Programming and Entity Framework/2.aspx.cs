using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _2 : System.Web.UI.Page
    {
        // Define a simple list of products (in a real scenario, this could come from a database)
        private class Product
        {
            public string ProductName { get; set; }
            public string Description { get; set; }
            public decimal Price { get; set; }
        }
        // List of products (mock data)
        private static readonly Product[] products = new Product[]
        {
            new Product { ProductName = "Laptop", Description = "A high-performance laptop.", Price = 999.99m },
            new Product { ProductName = "Smartphone", Description = "A latest model smartphone.", Price = 499.99m },
            new Product { ProductName = "Tablet", Description = "A versatile tablet for work and play.", Price = 299.99m }
        };
        protected void Page_Load(object sender, EventArgs e)
        {   
          
        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedProductIndex = int.Parse(ddlProducts.SelectedValue);

            if (selectedProductIndex == 0)
            {
                // Hide DetailsView if no product is selected
                dvProductDetails.Visible = false;
            }
            else
            {
                // Show the DetailsView and populate it with the selected product's details
                dvProductDetails.Visible = true;

                var selectedProduct = products[selectedProductIndex - 1]; // Adjust index to 0-based array

                // Set up the data to show in the DetailsView
                dvProductDetails.DataSource = new[]
                {
                    new {
                        ProductName = selectedProduct.ProductName,
                        Description = selectedProduct.Description,
                        Price = selectedProduct.Price.ToString("C")
                    }
                };

                dvProductDetails.DataBind();
            }
        }
    }
}
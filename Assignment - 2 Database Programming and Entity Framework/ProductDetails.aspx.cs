using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["product"] != null)
            {
                string product = Request.QueryString["product"];
                DisplayProductDetails(product);
            }
            else
            {
                // Handle the case where no product is selected
                productName.Text = "No product selected.";
                productDescription.Text = "Please select a product from the previous page.";
            }
        }

        private void DisplayProductDetails(string product)
        {
            switch (product)
            {
                case "A":
                    productName.Text = "Product A";
                    productDescription.Text = "This is the description for Product A.";
                    break;
                case "B":
                    productName.Text = "Product B";
                    productDescription.Text = "This is the description for Product B.";
                    break;
                case "C":
                    productName.Text = "Product C";
                    productDescription.Text = "This is the description for Product C.";
                    break;
                default:
                    productName.Text = "Unknown Product";
                    productDescription.Text = "No description available.";
                    break;
            }
        }
    }
}
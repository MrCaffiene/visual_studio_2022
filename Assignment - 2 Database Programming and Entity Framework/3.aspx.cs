using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }
            protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string selectedProduct = ddlProducts.SelectedValue;
            Response.Redirect("ProductDetails.aspx?product=" + selectedProduct);
        }
    
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                successmsgLabel.Text = "Successful registration";
                successmsgLabel.Visible = true;
            }
            else
            {
                successmsgLabel.Text = "";
                successmsgLabel.Visible = false;
            }
        }

    }
}
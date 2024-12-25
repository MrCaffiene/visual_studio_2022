using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void redButton_Click(object sender, EventArgs e)
        {
            textLabel.CssClass = "red";
        }

        protected void greenButton_Click(object sender, EventArgs e)
        {
            textLabel.CssClass = "green";
        }

        protected void blueButton_Click(object sender, EventArgs e)
        {
            textLabel.CssClass = "blue";
        }

        protected void defaultButton_Click(object sender, EventArgs e)
        {
            textLabel.CssClass = "black";
        }
    }
}
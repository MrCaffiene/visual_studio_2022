using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void red_Click(object sender, EventArgs e)
        {
            MrCaffienelbl.CssClass = "red";
        }
        protected void green_Click(object sender, EventArgs e)
        {
            MrCaffienelbl.CssClass = "green";
        }
        protected void blue_Click(object sender, EventArgs e)
        {
            MrCaffienelbl.CssClass = "blue";
        }
    }
}
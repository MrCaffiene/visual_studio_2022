using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class SessionDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                lblUserName.Text = "Welcome, " + Session["UserName"].ToString();
            }
            else
            {
                lblUserName.Text = "Session has expired or no data found.";
            }
        }

        protected void btnClearSession_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            lblUserName.Text = "Session cleared. Please go back to enter your name.";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Value"] = 0;
                viewstateLabel.Text = ViewState["Value"].ToString();
            }
        }
        protected void todefaultvalueButton_Click(object sender, EventArgs e)
        {
            ViewState["Value"] = 0;
            viewstateLabel.Text = ViewState["Value"].ToString();
        }

        protected void updateviewstateButton_Click(object sender, EventArgs e)
        {
            int counter = (int)ViewState["Value"];


            ViewState["Value"] = ++counter;
            viewstateLabel.Text = ViewState["Value"].ToString();
        }
    }
}
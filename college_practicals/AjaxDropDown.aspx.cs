using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace college_practicals
{
    public partial class AjaxDropDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList2.SelectedItem.Text == "Maharashtra")
            {
                DropDownList2.Items.Add("Mumbai");
                DropDownList2.Items.Add("Pune");
                DropDownList2.Items.Add("Nashik");

            }
            else if (DropDownList2.SelectedItem.Text == "Rajasthan")
            {
                DropDownList2.Items.Add("Jaipur");
                DropDownList2.Items.Add("Jaisalmer");
                DropDownList2.Items.Add("Udaipur");
            }
        }
    }
}
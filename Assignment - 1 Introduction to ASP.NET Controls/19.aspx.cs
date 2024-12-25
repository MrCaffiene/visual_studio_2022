using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls.images
{
    public partial class _20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (state_DropDownList.SelectedIndex == 0) city_DropDownList.SelectedIndex = 0;
        }

        protected void updateCity(object sender,EventArgs e)
        {
            string selectedState = state_DropDownList.SelectedValue;

            city_DropDownList.Items.Clear();
            city_DropDownList.Items.Add(new ListItem("Select City", ""));

            if (selectedState == "Andhra Pradesh")
            {
                city_DropDownList.Items.Add(new ListItem("Visakhapatnam", "Visakhapatnam"));
                city_DropDownList.Items.Add(new ListItem("Vijayawada", "Vijayawada"));
                city_DropDownList.Items.Add(new ListItem("Guntur", "Guntur"));
            }
            else if (selectedState == "Bihar")
            {
                city_DropDownList.Items.Add(new ListItem("Patna", "Patna"));
                city_DropDownList.Items.Add(new ListItem("Gaya", "Gaya"));
                city_DropDownList.Items.Add(new ListItem("Bhagalpur", "Bhagalpur"));
            }
            else if (selectedState == "Goa")
            {
                city_DropDownList.Items.Add(new ListItem("Panaji", "Panaji"));
                city_DropDownList.Items.Add(new ListItem("Margao", "Margao"));
            }
            else if (selectedState == "Gujarat")
            {
                city_DropDownList.Items.Add(new ListItem("Ahemdabad", "Ahemdabad"));
                city_DropDownList.Items.Add(new ListItem("Surat", "Surat"));
                city_DropDownList.Items.Add(new ListItem("Vadodara", "Vadodara"));
            }
            else if (selectedState == "Maharashtra")
            {
                city_DropDownList.Items.Add(new ListItem("Mumbai", "Mumbai"));
                city_DropDownList.Items.Add(new ListItem("Pune", "Pune"));
                city_DropDownList.Items.Add(new ListItem("Nashik", "Nashik"));
            }
            else if (selectedState == "Rajasthan")
            {
                city_DropDownList.Items.Add(new ListItem("Jaipur", "Jaipur"));
                city_DropDownList.Items.Add(new ListItem("Jodhpur", "Jodhpur"));
                city_DropDownList.Items.Add(new ListItem("Udaipur", "Udaipur"));
            }
        }
    }
}
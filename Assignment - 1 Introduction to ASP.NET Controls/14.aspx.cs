using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = nameTextBox.Text;
                string age = ageTextBox.Text;
                string height = heightTextBox.Text;
                string email = emailTextBox.Text;
                string gender = genderDropDownList.SelectedValue;

                HttpCookie nameCookie = new HttpCookie("Name", name);
                HttpCookie ageCookie = new HttpCookie("Age", age);
                HttpCookie heightCookie = new HttpCookie("Height", height);
                HttpCookie emailCookie = new HttpCookie("Email", email);
                HttpCookie genderCookie = new HttpCookie("Gender", gender);

                
                Response.Cookies.Add(nameCookie);
                Response.Cookies.Add(ageCookie);
                Response.Cookies.Add(heightCookie);
                Response.Cookies.Add(emailCookie);
                Response.Cookies.Add(genderCookie);

                if (gender == "Male")
                {
                    Response.Redirect("Male.aspx");
                }
                else if (gender == "Female")
                {
                    Response.Redirect("Female.aspx");
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            if (HiddenfieldTextBox.Text != "" || HiddenfieldTextBox.Text != null)
            {
                HiddenField.Value = HiddenfieldTextBox.Text;
                current_hiddenfield_valueLabel.Text = HiddenField.Value;
            }
            else
            {
                //do nothing
            }
        }
    }
}
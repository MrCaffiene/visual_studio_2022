using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void nameTextBox_TextChanged(object sender, EventArgs e)
        {
            autopostbackLabel.Text = nameTextBox.Text;
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            postbackLabel.Text = nameTextBox.Text;
        }
    }
}
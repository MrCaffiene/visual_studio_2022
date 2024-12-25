using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fontDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            textLabel.Font.Name = fontDropDownList.SelectedItem.ToString();
        }

        protected void sizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            textLabel.Font.Size = Convert.ToInt32(sizeDropDownList.SelectedValue.ToString());
        }

        protected void boldCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            textLabel.Font.Bold = boldCheckBox.Checked;
        }

        protected void italicCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            textLabel.Font.Italic = italicCheckBox.Checked;
        }

        protected void underlineCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            textLabel.Font.Underline = underlineCheckBox.Checked;
        }
    }
}
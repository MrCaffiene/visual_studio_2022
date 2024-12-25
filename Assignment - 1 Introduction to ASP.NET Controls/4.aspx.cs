using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void thankyouButton_Click(object sender, EventArgs e)
        {
            // Get the user's name
            string name = TextBox1.Text.Trim();

            // Get the selected breakfast items
            StringBuilder selectedItems = new StringBuilder();
            if (cerealCheckBox.Checked)
                selectedItems.Append("Cereal ");
            if (fruitsCheckBox.Checked)
                selectedItems.Append("Fruits ");
            if (pancakesCheckBox.Checked)
                selectedItems.Append("Pancakes ");

            // Get the selected time option
            string time = timeRadioButtonList.SelectedValue;

            // Construct the output message
            string outputMessage = $"Thank you very much <u>{name}</u>.<br />" +
                                   $"You have chosen <u>{selectedItems.ToString().Trim()}</u> for breakfast. " +
                                   $"I will prepare it for you <u>{time}</u>.";

            // Display the output message in the label
            outputLabel.Text = outputMessage;
        
        }
    }
}
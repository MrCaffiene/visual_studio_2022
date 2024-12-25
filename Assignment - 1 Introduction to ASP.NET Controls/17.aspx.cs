using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void DisplayCurrentTimeInLabel(object sender, EventArgs e)
        {
            digiClock_Label.Text = DateTime.Now.ToString("hh:mm:ss"); 
        }
    }
}
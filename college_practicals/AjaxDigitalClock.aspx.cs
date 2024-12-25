using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace college_practicals
{
    public partial class AjaxDigitalClock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void digitalclockTimer_Tick(object sender, EventArgs e)
        {
            digitalclockLabel.Text = DateTime.Now.ToString();
        }
    }
}
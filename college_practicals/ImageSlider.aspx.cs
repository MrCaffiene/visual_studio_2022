using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace college_practicals
{
    public partial class ImageSlider : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static int i = 0;
        public void Timer1_Tick(object sender, EventArgs e)
        {
            if (i == 0)
            {
                Image1.ImageUrl = "";
                Image1.AlternateText = "image1";
                i++;
            }
            else if (i == 1)
            {
                Image1.ImageUrl = "";
                Image1.AlternateText = "image2";
                i++;
            }
            else if (i == 2)
            {
                Image1.ImageUrl = "";
                Image1.AlternateText = "image2";
                i = 0;
            }
        }
    }
}
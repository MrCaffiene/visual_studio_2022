using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _19 : System.Web.UI.Page
    {

        private static List<string> imageUrls = new List<string>
        {
            "~/images/Advertisements/1.png",
            "~/images/Advertisements/2.png",
            "~/images/Advertisements/3.png"
        };


        private static int currentImgIndex =  0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) imageSlider_Image.ImageUrl = imageUrls[currentImgIndex];
        }

        protected void ChangeSlide(object sender, EventArgs e)
        {
            currentImgIndex = (currentImgIndex + 1) % imageUrls.Count;
            imageSlider_Image.ImageUrl = imageUrls[currentImgIndex];
        }
    }
}
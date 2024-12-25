using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uploadButton_Click(object sender, EventArgs e)
        {
            if (profileFileUpload.HasFile) {
                string extension = Path.GetExtension(profileFileUpload.FileName).ToLower();

                if(extension == ".png" || extension == ".jpg" || extension == ".jpeg")
                {
                    string file = Server.MapPath("~/images/") + profileFileUpload.FileName;

                    // Save the uploaded file to the server
                    profileFileUpload.SaveAs(file);

                    // Set the image source to the uploaded file
                    profileImage.ImageUrl = "~/images/"+profileFileUpload.FileName;
                }
            }
            else
            {
                Response.Write("<script>alert(`choose file first`)</script>");
            }
        }
    }
}
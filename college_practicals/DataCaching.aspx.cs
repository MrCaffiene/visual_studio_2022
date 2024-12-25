using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace college_practicals
{
    public partial class DataCaching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cachedData = (string)Cache["CachedData"];
            if (cachedData == null)
            {
                cachedData = getDataFromDb();
                Cache.Insert("CachedData", cachedData, null, DateTime.Now.AddSeconds(1), TimeSpan.Zero);
            }
            outputLabel.Text = cachedData;
        }

        protected String getDataFromDb()
        {
            return "Data received at : " + DateTime.Now.ToString("hh:mm:ss");
        }
    }
}
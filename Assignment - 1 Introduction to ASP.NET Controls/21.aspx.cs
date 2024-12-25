using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___1_Introduction_to_ASP.NET_Controls
{
    public partial class _22 : System.Web.UI.Page
    {
        private string GetExpensiveData()
        {
            System.Threading.Thread.Sleep(3000); 
            return "This is some expensive data fetched from a simulated database.";
        }

        private string GetData()
        {
            if (Cache["expensiveData"] == null)
            {
                string data = GetExpensiveData();
                Cache.Insert("expensiveData", data, null, DateTime.Now.AddMinutes(5), System.Web.Caching.Cache.NoSlidingExpiration);
                return data;
            }
            else
            {
                return (string)Cache["expensiveData"];
            }
        }

        protected void btnGetData_Click(object sender, EventArgs e)
        {
            string data = GetData();
            lblData.Text = data;
        }
    }
}
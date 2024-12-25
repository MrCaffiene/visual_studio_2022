using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Create a DataTable to hold sample data
                DataTable dt = new DataTable();
                dt.Columns.Add("Title", typeof(string));
                dt.Columns.Add("Description", typeof(string));
                // Add sample data
                dt.Rows.Add("Monday", "Sunny");
                dt.Rows.Add("Tuesday", "Cloudy");
                dt.Rows.Add("Wednesday", "Windy");
                dt.Rows.Add("Thursday", "Cloudy");
                // Bind the DataTable to the DataList control
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}
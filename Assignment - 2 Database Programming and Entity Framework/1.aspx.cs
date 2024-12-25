using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDatainGridViewControl();
            }
        }

        protected void LoadDatainGridViewControl()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Roll No", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Division", typeof(char));
            dt.Columns.Add("Course");

            dt.Rows.Add(001,"Ankit", "A", "MCA");
            dt.Rows.Add(002, "Sahil", "B", "BCA");
            dt.Rows.Add(003, "Rajesh", "C", "MBA");
            dt.Rows.Add(004, "Prakash", "D", "BBA");

            GridView.DataSource = dt;
            GridView.DataBind();
        }
    }
}
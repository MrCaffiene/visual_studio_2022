using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace college_practicals
{
    public partial class DetailsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.DataTable DT = new DataTable();

            //columns
            DT.Columns.Add("ID");
            DT.Columns.Add("name");
            DT.Columns.Add("email");

            //rows
            DT.Rows.Add("101", "jane", "jane@google.com");
            DT.Rows.Add("102", "pane", "pane@google.com");
            DT.Rows.Add("103", "gane", "gane@google.com");

            //databinding
            GridView1.DataSource = DT;
            GridView1.DataBind();
        }
    }
}
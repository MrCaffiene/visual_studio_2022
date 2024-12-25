using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace college_practicals
{
    public partial class ConnectedArchitecture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String ConnectionString = "root@localhost:3306/";


        }

        //loaddata in gridview 
        private void LoadData()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectedString))
                {
                    connection.Open();
                    string query = "select * from persons";
                    SqlDataAdapter DA = new SqlDataAdapter(query, connection);
                    DataSet DS = new DataSet();

                    DA.Fill(DS);


                    gvPerson.DataSource = DS;
                    gvPerson.DataBind();

                    connection.Close();
                }
            }
            catch (Exception ex)
            {
            }
        }


        //insert data on submit 
        //insert data into DB
    }
}
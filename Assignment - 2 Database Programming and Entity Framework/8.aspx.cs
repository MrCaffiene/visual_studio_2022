using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _8 : System.Web.UI.Page
    {

        // Retrieve the connection string from the web.config
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        // Method to bind data to GridView
        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Employees";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable dt = new DataTable();
                        dt.Load(reader);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        // Insert button click event
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string position = txtPosition.Text.Trim();
            decimal salary = Convert.ToDecimal(txtSalary.Text.Trim());
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Employees (EmployeeName, EmployeePosition, EmployeeSalary) VALUES (@Name, @Position,@Salary)";
            using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Position", position);
                    cmd.Parameters.AddWithValue("@Salary", salary);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            // Clear input fields
            txtName.Text = "";
            txtPosition.Text = "";
            txtSalary.Text = "";
            // Rebind GridView
            BindGrid();
        }
    }
}

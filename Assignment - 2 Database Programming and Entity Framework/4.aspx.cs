using System;
using System.Data.SqlClient;
using System.Configuration;  // Required for accessing web.config connection string

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _4 : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string employeeName = txtEmployeeName.Text;
            // Save the employee name to the database
            SaveEmployee(employeeName);
            // Store the employee name in session
            Session["EmployeeName"] = employeeName;
            // Redirect to the EmployeeDetails page
            Response.Redirect("EmployeeDetails.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Initialize anything on page load if needed
        }

        private void SaveEmployee(string employeeName)
        {
            // Fetch the connection string from the web.config
            string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Insert employee name into the database
                SqlCommand cmd = new SqlCommand("INSERT INTO Employees (EmployeeName) VALUES (@EmployeeName)", conn);
                cmd.Parameters.AddWithValue("@EmployeeName", employeeName);
                conn.Open();
                cmd.ExecuteNonQuery();  // Execute the query to insert the record
            }
        }
    }
}

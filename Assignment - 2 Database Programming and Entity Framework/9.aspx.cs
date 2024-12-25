using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _9 : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // Button click event to update data
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int employeeId = int.Parse(txtEmployeeID.Text);  // Get EmployeeID from input
            string employeeName = txtEmployeeName.Text;  // Get EmployeeName from input
            string employeePosition = txtEmployeePosition.Text;  // Get EmployeePosition from input
            int employeeSalary = int.Parse(txtEmployeeSalary.Text);  // Get EmployeeSalary from input

            // Perform Update operation using ADO.NET
            UpdateEmployee(employeeId, employeeName, employeePosition, employeeSalary);
        }

        // Button click event to delete data
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int employeeId = int.Parse(txtEmployeeID.Text);  // Get EmployeeID from input

            // Perform Delete operation using ADO.NET
            DeleteEmployee(employeeId);
        }
        private void UpdateEmployee(int employeeId, string employeeName, string employeePosition, int employeeSalary)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Create an SQL query to update the employee's details
                    string query = "UPDATE Employees SET EmployeeName = @EmployeeName, EmployeePosition = @EmployeePosition, EmployeeSalary = @EmployeeSalary WHERE EmployeeID = @EmployeeID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@EmployeeID", employeeId);
                        cmd.Parameters.AddWithValue("@EmployeeName", employeeName);
                        cmd.Parameters.AddWithValue("@EmployeePosition", employeePosition);
                        cmd.Parameters.AddWithValue("@EmployeeSalary", employeeSalary);

                        // Execute the command
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblStatus.Text = "Employee updated successfully!";
                        }
                        else
                        {
                            lblStatus.Text = "Employee not found or no changes made.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error (optional)
                lblStatus.Text = "Error updating employee: " + ex.Message;
            }
        }



        private void DeleteEmployee(int employeeId)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Create an SQL query to delete the employee
                    string query = "DELETE FROM Employees WHERE EmployeeID = @EmployeeID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameter to prevent SQL injection
                        cmd.Parameters.AddWithValue("@EmployeeID", employeeId);

                        // Execute the command
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblStatus.Text = "Employee deleted successfully!";
                        }
                        else
                        {
                            lblStatus.Text = "Employee not found.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error (optional)
                lblStatus.Text = "Error deleting employee: " + ex.Message;
            }
        }


    }
}
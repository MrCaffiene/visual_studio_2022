using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _11 : Page
    {
        // Connection string from Web.config
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Button click event to update employee data
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int employeeId = int.Parse(txtEmployeeID.Text); // Get Employee ID
            string employeeName = txtEmployeeName.Text; // Get Employee Name
            string employeePosition = txtEmployeePosition.Text; // Get Employee Position
            int employeeSalary = int.Parse(txtEmployeeSalary.Text); // Get Employee Salary

            // Perform the update operation using disconnected ADO.NET architecture
            UpdateEmployee(employeeId, employeeName, employeePosition, employeeSalary);
        }

        // Button click event to delete employee data
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int employeeId = int.Parse(txtDeleteEmployeeID.Text); // Get Employee ID for deletion

            // Perform the delete operation using disconnected ADO.NET architecture
            DeleteEmployee(employeeId);
        }

        // Method to update an employee in the database using ADO.NET (Disconnected)
        private void UpdateEmployee(int employeeId, string employeeName, string employeePosition, int employeeSalary)
        {
            try
            {
                // Create a DataTable to hold the employee data
                DataTable employeeTable = new DataTable();
                employeeTable.Columns.Add("EmployeeID", typeof(int));
                employeeTable.Columns.Add("EmployeeName", typeof(string));
                employeeTable.Columns.Add("EmployeePosition", typeof(string));
                employeeTable.Columns.Add("EmployeeSalary", typeof(int));

                // Create a new row for the employee data
                DataRow newRow = employeeTable.NewRow();
                newRow["EmployeeID"] = employeeId;
                newRow["EmployeeName"] = employeeName;
                newRow["EmployeePosition"] = employeePosition;
                newRow["EmployeeSalary"] = employeeSalary;
                employeeTable.Rows.Add(newRow);

                // Create SqlDataAdapter to update the database
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", connectionString))
                {
                    // Create command builder to generate the update command
                    SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);

                    // Update the database with the modified data in the DataTable
                    da.Update(employeeTable);

                    // Display success message
                    lblStatus.Text = "Employee updated successfully!";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error updating employee: " + ex.Message;
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }

        // Method to delete an employee from the database using ADO.NET (Disconnected)
        private void DeleteEmployee(int employeeId)
        {
            try
            {
                // Create a DataTable to hold the employee data
                DataTable employeeTable = new DataTable();
                employeeTable.Columns.Add("EmployeeID", typeof(int));

                // Create a row for the employee ID to be deleted
                DataRow rowToDelete = employeeTable.NewRow();
                rowToDelete["EmployeeID"] = employeeId;
                employeeTable.Rows.Add(rowToDelete);

                // Create SqlDataAdapter to delete the employee from the database
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", connectionString))
                {
                    // Create command builder to generate the delete command
                    SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);

                    // Delete the employee data from the DataTable
                    employeeTable.Rows[0].Delete();

                    // Update the database to reflect the deletion
                    da.Update(employeeTable);

                    // Display success message
                    lblStatus.Text = "Employee deleted successfully!";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error deleting employee: " + ex.Message;
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}

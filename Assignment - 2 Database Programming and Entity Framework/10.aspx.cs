using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _10 : Page
    {
        // Connection string from Web.config
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Button click event to insert employee data
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string employeeName = txtEmployeeName.Text; // Get Employee Name
            string employeePosition = txtEmployeePosition.Text; // Get Employee Position
            int employeeSalary = int.Parse(txtEmployeeSalary.Text); // Get Employee Salary

            // Perform insert operation using disconnected ADO.NET architecture
            InsertEmployee(employeeName, employeePosition, employeeSalary);
        }

        // Button click event to load employee data from the database
        protected void btnLoadEmployees_Click(object sender, EventArgs e)
        {
            // Perform select operation using disconnected ADO.NET architecture
            LoadEmployees();
        }

        // Method to insert an employee into the database using ADO.NET (Disconnected)
        private void InsertEmployee(string employeeName, string employeePosition, int employeeSalary)
        {
            try
            {
                // Create a DataTable to hold the new employee data
                DataTable employeeTable = new DataTable();
                employeeTable.Columns.Add("EmployeeName", typeof(string));
                employeeTable.Columns.Add("EmployeePosition", typeof(string));
                employeeTable.Columns.Add("EmployeeSalary", typeof(int));

                // Create a new row for the employee data
                DataRow newRow = employeeTable.NewRow();
                newRow["EmployeeName"] = employeeName;
                newRow["EmployeePosition"] = employeePosition;
                newRow["EmployeeSalary"] = employeeSalary;
                employeeTable.Rows.Add(newRow);

                // Create SqlDataAdapter to update the database
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", connectionString))
                {
                    // Create command builder to generate the insert command
                    SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);

                    // Update the database with the new employee data
                    da.Update(employeeTable);

                    // Display success message
                    lblStatus.Text = "Employee inserted successfully!";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error inserting employee: " + ex.Message;
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }

        // Method to load employees from the database using ADO.NET (Disconnected)
        private void LoadEmployees()
        {
            try
            {
                // Create a DataTable to hold the employees data
                DataTable employeeTable = new DataTable();

                // Create SqlDataAdapter to select employee data from the database
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT EmployeeID, EmployeeName, EmployeePosition, EmployeeSalary FROM Employees", connectionString))
                {
                    // Fill the DataTable with data from the database
                    da.Fill(employeeTable);

                    // Bind the DataTable to the GridView
                    gvEmployees.DataSource = employeeTable;
                    gvEmployees.DataBind();
                }

                lblStatus.Text = "Employees loaded successfully!";
                lblStatus.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error loading employees: " + ex.Message;
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}

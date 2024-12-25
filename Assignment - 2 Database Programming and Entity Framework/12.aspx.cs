using System;
using System.Linq;
using System.Web.UI;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _12 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch employees when the page loads
                FetchEmployees();
            }
        }

        // Method to fetch employees from the database using Entity Framework
        private void FetchEmployees()
        {
            // Using the Entity Framework DbContext to query the Employees table
            using (var context = new EmployeeDbContext())
            {
                var employees = context.Employees.ToList(); // Fetch all records from Employees table

                // Bind data to a GridView or display data directly (for simplicity, using a Label here)
                foreach (var employee in employees)
                {
                    lblEmployees.Text += $"ID: {employee.EmployeeID}, Name: {employee.EmployeeName}, " +
                                         $"Position: {employee.EmployeePosition}, Salary: {employee.EmployeeSalary}<br />";
                }
            }
        }
    }
}

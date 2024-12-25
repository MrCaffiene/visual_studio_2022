using System;
using System.Web;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the employee name from the session
                string employeeName = Session["EmployeeName"] as string;

                if (!string.IsNullOrEmpty(employeeName))
                {
                    lblEmployeeDetails.Text = "Employee Name: " + employeeName;
                }
                else
                {
                    lblEmployeeDetails.Text = "No employee details found.";
                }
            }
        }
    }
}

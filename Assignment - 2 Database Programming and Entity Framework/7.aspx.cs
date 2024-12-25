using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _7 : System.Web.UI.Page
    {
            private static DataTable employeesTable;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                // Initialize the data source
                InitializeDataTable();
                BindFormView();
            }

        }
        private void InitializeDataTable()
        {
            // Create a new DataTable if it doesn't already exist
            if (employeesTable == null)
            {
                employeesTable = new DataTable();
                employeesTable.Columns.Add("EmployeeID", typeof(int));
                employeesTable.Columns.Add("Name", typeof(string));
                employeesTable.Columns.Add("Position", typeof(string));
                employeesTable.Columns.Add("Salary", typeof(decimal));
                // Add sample data
                employeesTable.Rows.Add(001, "Employee1", "Software Engineer", 626200);
                employeesTable.Rows.Add(002, "Employee2", "Project Manager", 562600);
                employeesTable.Rows.Add(003, "Employee3", "UX Designer", 164000);
            }
        }
        private void BindFormView()
        {
            // Bind the FormView to the DataTable
            FormView1.DataSource = employeesTable;
            FormView1.DataBind();
        }
        protected void FormView1_PageIndexChanging(object sender,
        System.Web.UI.WebControls.FormViewPageEventArgs e)
        {
            // Change the page index and rebind the data
            FormView1.PageIndex = e.NewPageIndex;
            BindFormView();
        }
    }
}
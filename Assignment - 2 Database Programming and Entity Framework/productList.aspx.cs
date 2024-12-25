using System;
using System.Data.SqlClient;
using System.Data;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class productList : System.Web.UI.Page
    {
        // This method is triggered when the page loads for the first time (not during postbacks).
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        // Method to load products, with an optional filter parameter for filtering product names.
        private void LoadProducts(string filter = "")
        {
            // Retrieve the connection string from the web.config file
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;

            // Initialize SQL connection and query
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // SQL query to retrieve products from the database
                string query = "SELECT ProductID, ProductName, ProductDescription FROM Product";

                // If a filter is provided, modify the query to filter products by ProductName
                if (!string.IsNullOrEmpty(filter))
                {
                    query += " WHERE ProductName LIKE @Filter";
                }

                // Set up the SQL command with the query and connection
                SqlCommand cmd = new SqlCommand(query, conn);

                // If a filter is provided, add the parameter to the command
                if (!string.IsNullOrEmpty(filter))
                {
                    cmd.Parameters.AddWithValue("@Filter", "%" + filter + "%");
                }

                // Use SqlDataAdapter to fill the data into a DataTable
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Bind the data to the GridView (gvProducts)
                gvProducts.DataSource = dt;
                gvProducts.DataBind();
            }
        }

        // Method that gets triggered when the "Filter" button is clicked
        protected void btnFilter_Click(object sender, EventArgs e)
        {
            // Get the filter text from the TextBox (txtFilter)
            string filter = txtFilter.Text.Trim();

            // Call LoadProducts with the filter text to reload the GridView with filtered data
            LoadProducts(filter);
        }
    }
}

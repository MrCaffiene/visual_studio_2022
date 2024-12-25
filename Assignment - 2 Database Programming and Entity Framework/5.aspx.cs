using System;
using System.Data.SqlClient;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public partial class _5 : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string productName = txtProductName.Text;
            string productDescription = txtProductDescription.Text;
            // Save the product to the database
            SaveProduct(productName, productDescription);
        }

        private void SaveProduct(string productName, string productDescription)
        {
            // Retrieve the connection string from the web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Product (ProductName, ProductDescription) VALUES (@ProductName, @ProductDescription)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@ProductName", productName);
                cmd.Parameters.AddWithValue("@ProductDescription", productDescription);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void btnViewProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductList.aspx");
        }
    }
}

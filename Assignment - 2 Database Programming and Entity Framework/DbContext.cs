using Assignment___2_Database_Programming_and_Entity_Framework;
using System.Data.Entity;

public class EmployeeDbContext : DbContext
{
    public DbSet<Employee> Employees { get; set; }

    // Constructor to configure the connection string
    public EmployeeDbContext() : base("name=MyDatabaseConnection")
    {
    }
}

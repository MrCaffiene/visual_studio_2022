using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment___2_Database_Programming_and_Entity_Framework
{
    public class Employee
    {
        public int EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public string EmployeePosition { get; set; }
        public int? EmployeeSalary { get; set; }
    }

}
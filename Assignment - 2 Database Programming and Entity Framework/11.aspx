<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="11.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        11. Write a program to demonstrate update and delete operation in disconnected
architecture using ADO.NET objects.
    </h2>
    <!-- Update Employee Section -->
    <div>
        <h3>Update Employee</h3>
        <label for="txtEmployeeID">Employee ID:</label>
        <asp:TextBox ID="txtEmployeeID" runat="server" />
        <br />
        <label for="txtEmployeeName">Employee Name:</label>
        <asp:TextBox ID="txtEmployeeName" runat="server" />
        <br />
        <label for="txtEmployeePosition">Employee Position:</label>
        <asp:TextBox ID="txtEmployeePosition" runat="server" />
        <br />
        <label for="txtEmployeeSalary">Employee Salary:</label>
        <asp:TextBox ID="txtEmployeeSalary" runat="server" />
        <br />
        <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click" />
    </div>

    <!-- Delete Employee Section -->
    <div>
        <h3>Delete Employee</h3>
        <label for="txtDeleteEmployeeID">Employee ID:</label>
        <asp:TextBox ID="txtDeleteEmployeeID" runat="server" />
        <br />
        <asp:Button ID="btnDelete" Text="Delete" runat="server" OnClick="btnDelete_Click" />
    </div>

    <!-- Status Message -->
    <asp:Label ID="lblStatus" runat="server" ForeColor="Green" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="10.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        10. Write a program to demonstrate insert and select operation in disconnected architecture
with ADO.NET objects.
    </h2>
    <!-- Insert Employee Section -->
    <div>
        <h3>Insert Employee</h3>
        <label for="txtEmployeeName">Employee Name:</label>
        <asp:TextBox ID="txtEmployeeName" runat="server" />
        <br />

        <label for="txtEmployeePosition">Employee Position:</label>
        <asp:TextBox ID="txtEmployeePosition" runat="server" />
        <br />

        <label for="txtEmployeeSalary">Employee Salary:</label>
        <asp:TextBox ID="txtEmployeeSalary" runat="server" />
        <br />

        <asp:Button ID="btnInsert" Text="Insert" runat="server" OnClick="btnInsert_Click" />
    </div>

    <!-- Display Employees Section -->
    <div>
        <h3>Employee List</h3>
        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="True" />
        <asp:Button ID="btnLoadEmployees" Text="Load Employees" runat="server" OnClick="btnLoadEmployees_Click" />
    </div>

    <!-- Status Message -->
    <asp:Label ID="lblStatus" runat="server" ForeColor="Green" />
</asp:Content>

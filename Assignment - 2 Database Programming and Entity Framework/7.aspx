<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="7.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        7. Write a program to demonstrate the Form View Control.

    </h2>
    <div>
<h2>Employee Details</h2>
<asp:FormView ID="FormView1" runat="server"
DataKeyNames="EmployeeID"
AllowPaging="True"
OnPageIndexChanging="FormView1_PageIndexChanging">
<ItemTemplate>
<b>Employee ID:</b> <%# Eval("EmployeeID") %><br />
<b>Name:</b> <%# Eval("Name") %><br />
<b>Position:</b> <%# Eval("Position") %><br />
<b>Salary:</b> $<%# Eval("Salary") %><br />
</ItemTemplate>
</asp:FormView>
</div>
</asp:Content>

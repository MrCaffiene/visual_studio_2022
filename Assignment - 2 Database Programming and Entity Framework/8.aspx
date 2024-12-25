<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="8.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        8. Write a program to demonstrate insert and select operation in connected architecture
with ADO.NET objects.

    </h2>
    <div>
<h2>Insert Employee</h2>
<asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
<asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
<asp:Label ID="lblPosition" runat="server" Text="Position:"></asp:Label>
<asp:TextBox ID="txtPosition" runat="server"></asp:TextBox><br /><br />
<asp:Label ID="lblSalary" runat="server" Text="Salary:"></asp:Label>
<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox><br /><br />
<asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /><br /><br />
<h2>Employee List</h2>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"></asp:GridView>
</div>

</asp:Content>

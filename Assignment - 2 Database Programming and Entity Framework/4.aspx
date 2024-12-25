<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="4.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
       4. Write a program to enter the Employee name and display the details in the second page
using session parameters.
    </h2>
    <div>
<h2>Enter Employee Name</h2>
<asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
</div>

</asp:Content>

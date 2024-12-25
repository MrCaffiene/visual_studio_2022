<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="5.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        5. Write a program to demonstrate and filter the records based on Product Name.
    </h2>
    <div>
        <h2>Enter Product</h2>
        <asp:TextBox ID="txtProductName" runat="server" placeholder="Product Name" />
        <asp:TextBox ID="txtProductDescription" runat="server" placeholder="Product Description" />
        <asp:Button ID="btnSubmit" runat="server" Text="Add Product" OnClick="btnSubmit_Click" />
        <br /><br />
        <asp:Button ID="btnViewProducts" runat="server" Text="View Products" OnClick="btnViewProducts_Click" />
    </div>
</asp:Content>

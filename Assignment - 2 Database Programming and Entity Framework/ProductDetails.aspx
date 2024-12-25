<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>Product Details</h2>
    <div>
        <strong>Product Name:</strong>
        <asp:Label ID="productName" runat="server" Text="" />
    </div>
    <div>
        <strong>Product Description:</strong>
        <asp:Label ID="productDescription" runat="server" Text="" />
    </div>
</asp:Content>

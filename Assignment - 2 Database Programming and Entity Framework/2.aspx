<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="2.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>2. Write a program to select product name from dropdown list and display details of product
        in the details view control.
    </h2>
    <div>
         <!-- DropDownList for selecting a product -->
        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged">
            <asp:ListItem Text="Select a Product" Value="0" />
            <asp:ListItem Text="Laptop" Value="1" />
            <asp:ListItem Text="Smartphone" Value="2" />
            <asp:ListItem Text="Tablet" Value="3" />
        </asp:DropDownList>
        
        <br />
        <br />
        
        <!-- DetailsView to display selected product's details -->
        <asp:DetailsView ID="dvProductDetails" runat="server" AutoGenerateRows="False" Visible="False">
            <Fields>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Fields>
        </asp:DetailsView>
    </div>
</asp:Content>

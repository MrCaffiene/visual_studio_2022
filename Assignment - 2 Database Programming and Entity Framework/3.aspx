<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="3.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        3. Write a program to select Product Name from the dropdownlist and using querystring
parameters fetch the product details in the next page
    </h2>
    <div>
        <h2>Select a Product</h2>
        <asp:DropDownList ID="ddlProducts" runat="server">
            <asp:ListItem Text="Product A" Value="A" />
            <asp:ListItem Text="Product B" Value="B" />
            <asp:ListItem Text="Product C" Value="C" />
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="View Product Details" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>

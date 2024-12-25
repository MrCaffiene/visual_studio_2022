<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="productList.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework.productList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <div>
<h2>Product List</h2>
<asp:TextBox ID="txtFilter" runat="server" placeholder="Filter by Product Name"></asp:TextBox>
<asp:Button ID="btnFilter" runat="server" Text="Filter" OnClick="btnFilter_Click" />
<br /><br />
<asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:BoundField DataField="ProductID" HeaderText="ID" />
<asp:BoundField DataField="ProductName" HeaderText="Product Name" />
<asp:BoundField DataField="ProductDescription" HeaderText="Description" />
</Columns>
</asp:GridView>
</div>
</asp:Content>

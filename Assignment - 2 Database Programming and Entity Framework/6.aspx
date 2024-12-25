<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="6.aspx.cs" Inherits="Assignment___2_Database_Programming_and_Entity_Framework._6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="inHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="inBody" runat="server">
    <h2>
        6. Write a program to demonstrate Datalist Control
    </h2>
    <div>
<h3>DataList Control Example</h3>
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
<ItemTemplate>
<div style="border: 1px solid #ccc; padding: 10px; margin: 5px;">
<h4><%# Eval("Title") %></h4>
<p><%# Eval("Description") %></p>
</div>
</ItemTemplate>
</asp:DataList>
</div>

</asp:Content>

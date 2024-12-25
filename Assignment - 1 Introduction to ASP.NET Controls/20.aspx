<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="20.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._21" %>
<%@ OutputCache Duration="5" VaryByParam="None" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>20. Write a web application to demonstrate page output caching.</h2>
    <div>
        <p>This page caches the output of the entire HTML content for 5 seconds.</p>
        <p>Current Time: <strong><%= DateTime.Now.ToString() %></strong></p>
        <br />
        <p>If you refresh the page within 5 seconds, you will see the same content without regenerating the time.</p>
    </div>
</asp:Content>

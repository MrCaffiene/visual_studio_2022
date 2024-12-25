<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="3.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>
        3.A basic contact form where the user enters their name, and on button click, the name is displayed on a label.
    </h2>
    <div>
        <h2>Contact Form</h2>
        <asp:Label ID="nameLabel" runat="server" Text="Name : "></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server" AutoPostBack="false"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br /><br />
        Your Name as you entered : 
        <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

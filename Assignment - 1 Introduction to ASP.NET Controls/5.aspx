<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="5.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>
        5.Write a program to demonstrate Postback.
    </h2>
    <div>
        <asp:Label ID="nameLabel" runat="server" Text="enter your name : "></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server" AutoPostBack="True" OnTextChanged="nameTextBox_TextChanged"></asp:TextBox><br /><br />
        <asp:Button ID="submitButton" runat="server" Text="submit" OnClick="submitButton_Click" /><br /><br />
        [Note : remove the focus from text box to see the updated text in real time :]<br />
        AutoPostBack = 
        <asp:Label ID="autopostbackLabel" runat="server" Text=""></asp:Label><br />
        PostBack = 
        <asp:Label ID="postbackLabel" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

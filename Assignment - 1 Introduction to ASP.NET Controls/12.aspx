<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="12.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    12. Write a program to demonstrate the Hidden Object.<br /><br />


    HiddenField : <br /><br />


    <asp:HiddenField ID="HiddenField" runat="server" />
    Current HiddenField Value = <asp:Label ID="current_hiddenfield_valueLabel" runat="server" Text=""></asp:Label><br /><br />

    Enter new value for HiddenField below<br />

    <asp:TextBox ID="HiddenfieldTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="updateButton_Click" />

</asp:Content>

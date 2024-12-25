<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="11.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    11. Write a program to demonstrate the ViewState.<br /><br />
    ViewState : <asp:Label ID="viewstateLabel" runat="server" Text="0"></asp:Label>
    <br /><br />
    <asp:Button ID="updateviewstateButton" runat="server" Text="Update ViewState" OnClick="updateviewstateButton_Click" />
    <asp:Button ID="todefaultvalueButton" runat="server" Text="To Default Value" OnClick="todefaultvalueButton_Click" />
</asp:Content>

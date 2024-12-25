<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="SessionDisplay.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls.SessionDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Label ID="lblUserName" runat="server" Text="Welcome, please wait..."></asp:Label>
    <br />
    <asp:Button ID="btnClearSession" runat="server" Text="Clear Session" OnClick="btnClearSession_Click" />
</asp:Content>

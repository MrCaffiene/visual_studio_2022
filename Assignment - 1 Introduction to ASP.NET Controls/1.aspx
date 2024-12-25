<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="1.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>
        1.Take three Button controls, Red, Green, and Blue, and one Label control. Using CSS class, when a user presses any of the three buttons, the label's appearance will change accordingly.
    </h2>
    <div>
        <asp:Button ID="redButton" runat="server" Text="Red" OnClick="redButton_Click" />
        <asp:Button ID="greenButton" runat="server" Text="Green" OnClick="greenButton_Click" />
        <asp:Button ID="blueButton" runat="server" Text="Blue" OnClick="blueButton_Click" /> <br /><br />
        <asp:Button ID="defaultButton" runat="server" Text="To Default" OnClick="defaultButton_Click" />
        <br />
        <br />
        <asp:Label ID="textLabel" runat="server" Text="Changes can be seen here"></asp:Label>
    </div>

</asp:Content>

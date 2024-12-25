<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="6.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>
        6.Write a program to upload your profile picture and display it in image control (file format should be .jpg, .jpeg or .png format).
    </h2>
    <div>
        <asp:Button ID="uploadButton" runat="server" Text="Upload" OnClick="uploadButton_Click" />
        <asp:FileUpload ID="profileFileUpload" runat="server" /><br /><br />
        <h3>Your Image : </h3>
        <asp:Image ID="profileImage" runat="server" Height="200" Width="200"/>
    </div>
</asp:Content>

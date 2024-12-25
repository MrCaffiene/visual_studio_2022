<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="4.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>
        4.Design a web application as follows. On submitting the form data confirm the selection made in the following format on one LABEL Control.
    </h2>
    <div>
        <h2>
            <asp:Label ID="outputLabel" runat="server" Text="Label">
                Thank you very much _____.<br />
You have chosen _____ for breakfast. I will prepare it for you _____.
            </asp:Label>
        </h2>
        <asp:Label ID="nameLabel" runat="server" Text="Please enter your name : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="itemLabel" runat="server" Text="What would you linke for breakfast?"></asp:Label><br />
        <asp:CheckBox ID="cerealCheckBox" runat="server" text="Cereal"/><br />
        <asp:CheckBox ID="fruitsCheckBox" runat="server"  text="Fruits"/><br />
        <asp:CheckBox ID="pancakesCheckBox" runat="server"  text="Pancakes"/><br /><br />
        <asp:Label ID="timeLabel" runat="server" Text="Supply me : "></asp:Label><br />
        <asp:RadioButtonList ID="timeRadioButtonList" runat="server">
            <asp:ListItem>Now</asp:ListItem>
            <asp:ListItem>Later</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="thankyouButton" runat="server" Text="Thank You" OnClick="thankyouButton_Click" />
    </div>
</asp:Content>

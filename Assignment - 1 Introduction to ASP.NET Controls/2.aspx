<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="2.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>
    2.Write a program to give font effects (name, size, effect) to the text (without using Button control).
    </h2>
    <div>
        
        <asp:Label ID="fontLabel" runat="server" Text="font : "></asp:Label>
        <asp:DropDownList ID="fontDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="fontDropDownList_SelectedIndexChanged" >
            <asp:ListItem>Arial Black</asp:ListItem>
            <asp:ListItem>Georgia</asp:ListItem>
            <asp:ListItem>Times New Roman</asp:ListItem>
            <asp:ListItem>Verdana</asp:ListItem>
            <asp:ListItem>Courier New</asp:ListItem>
            <asp:ListItem Selected="True">Default</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:Label ID="sizeLabel" runat="server" Text="size : "></asp:Label>
        <asp:DropDownList ID="sizeDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="sizeDropDownList_SelectedIndexChanged">
            <asp:ListItem Selected="True">20</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>36</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:Label ID="effectsLabel" runat="server" Text="effect : "></asp:Label><br />
        <asp:CheckBox ID="boldCheckBox" runat="server" Text="Bold" AutoPostBack="True" OnCheckedChanged="boldCheckBox_CheckedChanged" /><br />
        <asp:CheckBox ID="italicCheckBox" runat="server" Text="Italic" AutoPostBack="True" OnCheckedChanged="italicCheckBox_CheckedChanged" /><br />
        <asp:CheckBox ID="underlineCheckBox" runat="server" Text="Underline" AutoPostBack="True" OnCheckedChanged="underlineCheckBox_CheckedChanged" />
    </div><br /><br />
    <div>
    <asp:Label ID="textLabel" runat="server" Text="Changes can be seen here" Font-Size="20"></asp:Label>
    </div>
</asp:Content>

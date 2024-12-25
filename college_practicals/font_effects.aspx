<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="font_effects.aspx.cs" Inherits="college_practicals.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="Font"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Arial</asp:ListItem>
                <asp:ListItem>Courier New</asp:ListItem>
                <asp:ListItem>Georgia</asp:ListItem>
                <asp:ListItem Value="Times New Roman"></asp:ListItem>
                <asp:ListItem>Verdana</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Size"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem Selected="True">24</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem Value="32"></asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Bold" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Underline" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Italic" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Selected effects are demonstrated here."></asp:Label>
        </div>
    </form>
</body>
</html>

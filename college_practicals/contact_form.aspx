<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_form.aspx.cs" Inherits="college_practicals.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="on">
        <div>
            <asp:Label ID="Label2" runat="server" Text="enter your name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="enter" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>

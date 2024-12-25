<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="labelColorChanger.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>app/home</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="MrCaffienelbl" runat="server" Text="MrCaffiene"></asp:Label>
        <div>
            <asp:Button ID="red" runat="server" Text="red" OnClick="red_Click" />
            <asp:Button ID="green" runat="server" Text="green" OnClick="green_Click" />
            <asp:Button ID="blue" runat="server" Text="blue" OnClick="blue_Click"/>
        </div>
    </form>
</body>
</html>

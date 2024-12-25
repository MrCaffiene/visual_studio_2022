<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCaching.aspx.cs" Inherits="college_practicals.DataCaching" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label" runat="server" Text="DataCaching"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

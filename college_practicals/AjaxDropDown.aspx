<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxDropDown.aspx.cs" Inherits="college_practicals.AjaxDropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h1>State : </h1>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Text="State" Value=""></asp:ListItem>
                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                        <asp:ListItem Text="Gujrat" Value="Gujrat"></asp:ListItem>
                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
                        <asp:ListItem Text="City" Value=""></asp:ListItem>
                    </asp:DropDownList>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="DropDownList1_SelectedIndexChanged"/>
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

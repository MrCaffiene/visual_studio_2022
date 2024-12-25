<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageSlider.aspx.cs" Inherits="college_practicals.ImageSlider" %>

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
                    <asp:Image ID="Image1" runat="server" Height="300"/>
                    <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick"></asp:Timer>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

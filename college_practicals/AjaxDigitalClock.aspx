<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxDigitalClock.aspx.cs" Inherits="college_practicals.AjaxDigitalClock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager ID="digitalclockScriptManager" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="digitalclockUpdatePanel" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="digitalclockTimer" runat="server" OnTick="digitalclockTimer_Tick">
                    </asp:Timer>
                        <asp:Label ID="digitalclockLabel" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="digitalclockTimer" EventName="tick" />
            </Triggers>
            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>

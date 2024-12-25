<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="17.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>17. Write a web application to display digital clock using ajax.</h2>
    <div>
    <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="digiClock_UpdatePanel" runat="server">
            <ContentTemplate>
                <asp:Label ID="digiClock_Label" runat="server" Text=""></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="digiClock_Timer" EventName="Tick"/>
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="digiClock_Timer" runat="server" Interval="1000" OnTick="DisplayCurrentTimeInLabel"></asp:Timer>
    </div>
</asp:Content>

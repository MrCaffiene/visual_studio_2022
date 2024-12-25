<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="18.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>18. Write a web application to create an image slider using ajax.</h2>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Image ID="imageSlider_Image" runat="server" Width="250" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="imageSlider_Timer" EventName="Tick"/>
            </Triggers>
         </asp:UpdatePanel>
        <asp:Timer ID="imageSlider_Timer" Interval="2000" runat="server" OnTick="ChangeSlide"></asp:Timer>
    </div>
</asp:Content>

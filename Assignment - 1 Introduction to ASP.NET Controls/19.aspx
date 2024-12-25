<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="19.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls.images._20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>19. Write a program to select state and on the basis of state fill city information using ajax.
    </h2>
    <div>
       <asp:DropDownList ID="state_DropDownList" runat="server" OnSelectedIndexChanged="updateCity" AutoPostBack="True">
           <asp:ListItem Text="State?" Value=""></asp:ListItem>
           <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
           <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
           <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
           <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
           <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
           <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
       </asp:DropDownList><br /><br />
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="city_UpdatePanel" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="city_DropDownList" runat="server">
                    <asp:ListItem Text="Select City" Value=""></asp:ListItem>
                </asp:DropDownList>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlId="state_DropDownList" EventName="SelectedIndexChanged"/>
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

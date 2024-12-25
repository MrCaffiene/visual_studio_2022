<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="7.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls.images._7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container{
            display:flex;
            gap:1rem
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>7.Write a program to demonstrate Ad Rotator Control.
    </h2>
    <div class="container">
        <div>
            <h3>AdRotator_1</h3>
            <br />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="Advertisements.xml" Height="300" Width="300"/>
        </div>
        <div>
            <h3>AdRotator_2</h3>
            <br />
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="Advertisements.xml" Height="300" Width="300"/>
        </div>
        <div>
            <h3>AdRotator_3</h3>
            <br />
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="Advertisements.xml" Height="300" Width="300"/>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="Female.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls.Female" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h1>Welcome, Female User</h1>
    <p>
        <% 
            string height = Request.Cookies["Height"]?.Value;
            if (!string.IsNullOrEmpty(height))
            {
                int heightInCm = int.Parse(height);
                int idealWeight = 0;

                // Calculate the ideal weight based on height
                if (heightInCm >= 150) idealWeight = 55;
                else if (heightInCm >= 160) idealWeight = 60;
                else if (heightInCm >= 170) idealWeight = 65;
                else if (heightInCm >= 180) idealWeight = 70;
                else if (heightInCm >= 190) idealWeight = 75;

                Response.Write($"Your ideal weight for height {heightInCm} cm is: {idealWeight} kg.");
            }
            else
            {
                Response.Write("Height information not available.");
            }
        %>
    </p>
    <div>
        <table>
        <thead>
            <tr>
                <th>Height (CM)</th>
                <th>Ideal Weight for Male (kg)</th>
                <th>Ideal Weight for Female (kg)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>150</td>
                <td>60</td>
                <td>55</td>
            </tr>
            <tr>
                <td>160</td>
                <td>65</td>
                <td>60</td>
            </tr>
            <tr>
                <td>170</td>
                <td>70</td>
                <td>65</td>
            </tr>
            <tr>
                <td>180</td>
                <td>75</td>
                <td>70</td>
            </tr>
            <tr>
                <td>190</td>
                <td>80</td>
                <td>75</td>
            </tr>
        </tbody>
    </table>
    </div>
</asp:Content>

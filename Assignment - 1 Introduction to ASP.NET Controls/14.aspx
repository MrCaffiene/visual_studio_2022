<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="14.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h3>Q14.Create a web application to get following information from a user.<br />
        Name, Age, height, Email, Gender. Validate the input by using proper validation control. If the gender is male then navigate to Male.aspx web page, and if the gender is female then navigate to Female.aspx. Then depending upon the gender and height of the individual suggest the ideal weight.
[Note : use cookies to pass information between pages]<br />
        The height to weight ratio is as follows<br />
    </h3>
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
    <div>

        <!-- name -->
        <br /><asp:Label ID="nameLabel" runat="server" Text="name : "></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" ControlToValidate="nameTextBox" runat="server" ErrorMessage="name required" ForeColor="Red" ></asp:RequiredFieldValidator>

        <!-- age -->
        <br /><asp:Label ID="ageLabel" runat="server" Text="age : "></asp:Label>
        <asp:TextBox ID="ageTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ageRequiredFieldValidator" ControlToValidate="ageTextBox" runat="server" ErrorMessage="email required" ForeColor="Red" ></asp:RequiredFieldValidator>

        <!-- height -->
        <br /><asp:Label ID="heightLabel" runat="server" Text="height (cm) : "></asp:Label>
        <asp:TextBox ID="heightTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="heightRequiredFieldValidator" ControlToValidate="heightTextBox" runat="server" ErrorMessage="height required. " ForeColor="Red" ></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="heightRangeValidator" ControlToValidate="heightTextBox" runat="server" ErrorMessage="height must be between 150-200" ForeColor="Red" MinimumValue="150" MaximumValue="200"></asp:RangeValidator>

        <!-- email -->
        <br /><asp:Label ID="emailLabel" runat="server" Text="email : "></asp:Label>
        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" ControlToValidate="emailTextBox" runat="server" ErrorMessage="email required. " ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="emailTextBox" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Invalid email format" ForeColor="Red" ></asp:RegularExpressionValidator>

        <!-- gender -->
        <br /><asp:Label ID="genderLabel" runat="server" Text="gender : "></asp:Label>
        <asp:DropDownList ID="genderDropDownList" runat="server">
                <asp:ListItem Text="Select Gender" Value="" />
                <asp:ListItem Text="Male" Value="Male" />
                <asp:ListItem Text="Female" Value="Female" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator 
                ID="rfvGender" 
                runat="server" 
                ControlToValidate="genderDropDownList" 
                InitialValue="" 
                ErrorMessage="Gender is required" 
                ForeColor="Red" />
        <br /><br /><br />
        <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />

        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>

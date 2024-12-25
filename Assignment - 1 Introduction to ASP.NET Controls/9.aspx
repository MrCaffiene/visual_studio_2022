<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment - 1 Introduction to ASP.NET Controls.Master" AutoEventWireup="true" CodeBehind="9.aspx.cs" Inherits="Assignment___1_Introduction_to_ASP.NET_Controls._9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background {
            background-color: gray;
            padding: 1rem;
        }
        .border-radius{
            border-radius: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>9.Create a registration form having the following UI.</h2>
    <asp:Image ID="questionScreenShot" runat="server" ImageUrl="~/images/questionScreenShot.png" Height="200" Width="300" /><br />
    Implement proper Validations by using all below Validation Controls:
    <ul>
        <li>All fields are required</li>
        <li>Mobile No. must be 10 integer digits</li>
        <li>Email must be in a valid form</li>
        <li>Password must be 8 characters or greater and match with confirmed password</li>
        <li>At last display all the error messages</li>
        <li>If there is no validation error then display the message “Successful registration” Else display</li>
        <li>error using Validation Summary.</li>
    </ul>
    <div class="background">
        <h3 style="margin-top:0; padding-top:0; padding-bottom:5px;">Registration Form - </h3>
        <div>
            <!-- fullname -->
            <div class="stickToEnd">
                <asp:Label ID="fullnameLabel" runat="server" Text="Full Name : " Font-Bold="True" Width="250"></asp:Label>
                <asp:TextBox ID="fullnameTextBox" runat="server" Width="450" CssClass="border-radius" PlaceHolder="Enter full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="fullnameRequiredFieldValidator" runat="server" ErrorMessage="fullname required" ControlToValidate="fullnameTextBox"></asp:RequiredFieldValidator>
            </div>
            <br />
            <!-- address -->
            <div class="stickToEnd">
                <asp:Label ID="addressLabel" runat="server" Text="Address : " Font-Bold="True" Width="250"></asp:Label>
                <asp:TextBox ID="addressTextBox" runat="server" Height="50" TextMode="MultiLine" Width="450" CssClass="border-radius" PlaceHolder="Enter Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="addressRequiredFieldValidator" runat="server" ErrorMessage="address required" ControlToValidate="addressTextBox"></asp:RequiredFieldValidator>
            </div>
            <br />
            <!-- state -->
            <div class="stickToEnd">
                <asp:Label ID="stateLabel" runat="server" Text="State : " Font-Bold="True"  Width="250"></asp:Label>
                <asp:DropDownList ID="stateDropDownList" runat="server" Width="450" CssClass="border-radius" Font-Bold="true">
                    <asp:ListItem Selected="True">Maharashtra</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="stateRequiredFieldValidator" runat="server" ErrorMessage="state required" ControlToValidate="stateDropDownList"></asp:RequiredFieldValidator>
            </div>
            <br />
            <!-- mobileno -->
            <div class="stickToEnd">
                <asp:Label ID="mobilenoLabel" runat="server" Text="Mobile No : " Font-Bold="True"   Width="250"></asp:Label>
                <asp:TextBox ID="mobilenoTextBox" runat="server" Width="450" CssClass="border-radius" PlaceHolder="Enter Mobile Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="mobilenoRequiredFieldValidator" runat="server" ErrorMessage="mobile no required" ControlToValidate="mobilenoTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="mobilenoRegularExpressionValidator" runat="server" ErrorMessage="mobile should be 10 integers long ranging [0-9]" ValidationExpression="^\d{10}$" ControlToValidate="mobilenoTextBox"></asp:RegularExpressionValidator>
            </div>
            <br />
            <!-- email -->
            <div class="stickToEnd">
                <asp:Label ID="emailLabel" runat="server" Text="Email : " Font-Bold="True"   Width="250"></asp:Label>
                <asp:TextBox ID="emailTextBox" runat="server" Width="450" CssClass="border-radius" PlaceHolder="Enter Email id"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ErrorMessage="email required" ControlToValidate="emailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server" ErrorMessage="Invalid Email" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ControlToValidate="emailTextBox"></asp:RegularExpressionValidator>
            </div>
            <br />
            <!-- password (regex is pending here)-->
            <div class="stickToEnd">
                <asp:Label ID="passwordLabel" runat="server" Text="Password : " Font-Bold="True"   Width="250"></asp:Label>
                <asp:TextBox ID="passwordTextBox" runat="server" Width="450" CssClass="border-radius" PlaceHolder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordRequiredFieldValidator" runat="server" ErrorMessage="password required" ControlToValidate="passwordTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="passwordRegularExpressionValidator" runat="server" ErrorMessage="password should be 8 charcters long" ControlToValidate="passwordTextBox" ValidationExpression="^.{8,}$"></asp:RegularExpressionValidator>
            </div>
            <br />
            <!-- confirmpassword -->
            <div class="stickToEnd">
                <asp:Label ID="confirmpasswordLabel" runat="server" Text="Confirm Password : " Font-Bold="True"   Width="250"></asp:Label>
                <asp:TextBox ID="confirmpasswordTextBox" runat="server" Width="450" CssClass="border-radius" PlaceHolder="Confirm Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="confirmpasswordRequiredFieldValidator" runat="server" ErrorMessage="re-enter password to confirm" ControlToValidate="confirmpasswordTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="confirmpasswordCompareValidator" runat="server" ErrorMessage="password does not match" ControlToValidate="confirmpasswordTextBox" ControlToCompare="passwordTextBox" ></asp:CompareValidator>
            </div>
            <br />
            <!-- class6to12 -->
            <div class="stickToEnd">
                <asp:Label ID="class6to12Label" runat="server" Text="Enter Class (6-12) : " Font-Bold="True"   Width="250"></asp:Label>
                <asp:TextBox ID="class6to12TextBox" runat="server" Width="450" CssClass="border-radius" PlaceHolder="Enter Class"></asp:TextBox>
                <asp:RequiredFieldValidator ID="class6to12RequiredFieldValidator8" runat="server" ErrorMessage="class required" ControlToValidate="class6to12TextBox"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="class6to12RangeValidator" runat="server" ErrorMessage="class should be in range [6-12]" MinimumValue="6" MaximumValue="12" ControlToValidate="class6to12TextBox" Type="Integer"></asp:RangeValidator>
            </div>
            <br /><br /><br /><br />
            <div Style="padding-left: 120px;">
                <asp:Button ID="registerButton" runat="server" Text="Register" Style="padding:3px" OnClick="registerButton_Click" Font-Bold="True" CssClass="border-radius "/>
                <span style="margin-left:35px;">
                <asp:Button ID="cancelButton" runat="server" Text="Cancel" Style="padding:3px" OnClientClick="clearForm();return false;" Font-Bold="True" CssClass="border-radius"/>
                </span>
            </div>
            <!-- validaitonsummary -->
            <h3><b>ValidationSummary : </b></h3>
            <!-- successmsg -->
            <asp:Label ID="successmsgLabel" runat="server" Text="" Font-Bold="True" ForeColor="Green"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" ShowMessageBox="True" HeaderText="correct the following errors" />
        </div>
    </div>
    <script>
        function clearForm() {
            document.getElementById("form1").reset();
            document.getElementById("ValidationSummary").innerHTML = "";
            document.getElementById("successmsgLabel").innerHTML = "";
        }
    </script>
</asp:Content>

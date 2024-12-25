<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output_caching.aspx.cs" Inherits="college_practicals.output_caching" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>OutPut Caching : </h1>
            Page was Cached at =<%= DateTime.Now.ToString() %>
        </div>
    </form>
</body>
</html>

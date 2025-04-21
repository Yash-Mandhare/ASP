<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondPage.aspx.cs" Inherits="StateManagementDemo.SecondPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Query String Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblQueryStringValue" runat="server" Font-Bold="True"></asp:Label><br /><br />
            <a href="FirstPage.aspx">Back to FirstPage</a>
        </div>
    </form>
</body>
</html>
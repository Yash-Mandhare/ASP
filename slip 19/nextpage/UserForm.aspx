<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="nextpage.UserForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>User Information Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Enter Your Information</h2>
        <label>Name:</label>
        <asp:TextBox ID="txtName" runat="server" /><br /><br />
        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server" /><br /><br />
        <label>Phone:</label>
        <asp:TextBox ID="txtPhone" runat="server" /><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NameValidation.aspx.cs" Inherits="RequiredField.NameValidation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Name Input with Validation</title>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Enter Your Name</h2>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator 
            ID="rfvName" 
            runat="server" 
            ControlToValidate="txtName" 
            ErrorMessage="Name is required!" 
            ForeColor="Red" 
            Display="Dynamic" /><br /><br />
        
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
    </form>
</body>
</html>
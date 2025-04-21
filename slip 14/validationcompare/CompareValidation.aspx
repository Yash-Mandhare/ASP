<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidation.aspx.cs" Inherits="validationcompare.CompareValidation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Compare Validator Example</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Compare Name Fields</h2>

        <asp:Label ID="lblName1" runat="server" Text="Enter Name:" /><br />
        <asp:TextBox ID="txtName" runat="server" /><br /><br />

        <asp:Label ID="lblName2" runat="server" Text="Confirm Name:" /><br />
        <asp:TextBox ID="txtConfirmName" runat="server" /><br />
        
        <asp:CompareValidator 
            ID="cvNameMatch" 
            runat="server" 
            ControlToCompare="txtName" 
            ControlToValidate="txtConfirmName" 
            ErrorMessage="Names do not match!" 
            ForeColor="Red" 
            Display="Dynamic" /><br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
    </form>
</body>
</html>
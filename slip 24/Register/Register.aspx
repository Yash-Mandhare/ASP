<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Register.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:400px; margin:50px auto; padding:20px; border:1px solid #ccc;">
            <h2 style="text-align:center;">User Registration</h2>

            <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label><br />
            <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserID" runat="server" ControlToValidate="txtUserID"
                ErrorMessage="User ID is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revUserID" runat="server" ControlToValidate="txtUserID"
                ErrorMessage="User ID must have 7-20 characters, at least one uppercase letter and one digit."
                ForeColor="Red"
                ValidationExpression="^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{7,20}$"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label><br />
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Passwords do not match!" ForeColor="Red"></asp:CompareValidator>
            <br /><br />

            <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label><br />
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge"
                ErrorMessage="Age is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge"
                MinimumValue="21" MaximumValue="30" Type="Integer"
                ErrorMessage="Age must be between 21 and 30!" ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <asp:Label ID="Label6" runat="server" Text="Email ID:"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email ID is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                ErrorMessage="Invalid Email ID format!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
            <br /><br />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>

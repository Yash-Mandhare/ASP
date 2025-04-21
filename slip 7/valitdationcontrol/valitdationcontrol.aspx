<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="valitdationcontrol.aspx.cs" Inherits="valitdationcontrol.valitdationcontrol" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details Validation</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:400px; margin:50px auto; padding:20px; border:1px solid #ccc;">
            <h2 style="text-align:center;">Student Details Form</h2>

            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email Format!" ForeColor="Red"
                ValidationExpression="\w+@\w+\.\w+"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label><br />
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge"
                ErrorMessage="Age is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge"
                MinimumValue="17" MaximumValue="100" Type="Integer"
                ErrorMessage="Age must be between 17 and 100!" ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <asp:Label ID="Label4" runat="server" Text="Mobile Number:"></asp:Label><br />
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                ErrorMessage="Mobile number is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile"
                ValidationExpression="^[0-9]{10}$" ErrorMessage="Enter a valid 10-digit mobile number."
                ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>

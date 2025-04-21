<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageApp.aspx.cs" Inherits="MessageApp.MessageApp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message Formatter</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:400px; margin:50px auto; padding:20px; border:1px solid #ccc;">
            <h2 style="text-align:center;">Message Formatter</h2>

            <asp:Label ID="Label1" runat="server" Text="Enter Name:"></asp:Label><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label2" runat="server" Text="Enter Message:"></asp:Label><br />
            <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label3" runat="server" Text="Choose Text Style:"></asp:Label><br />
            <asp:CheckBox ID="chkBold" runat="server" Text="Bold" />
            <asp:CheckBox ID="chkItalic" runat="server" Text="Italic" />
            <asp:CheckBox ID="chkUnderline" runat="server" Text="Underline" />
            <br /><br />

            <asp:Label ID="Label4" runat="server" Text="Choose Text Color:"></asp:Label><br />
            <asp:RadioButton ID="rdoRed" runat="server" GroupName="Color" Text="Red" />
            <asp:RadioButton ID="rdoGreen" runat="server" GroupName="Color" Text="Green" />
            <asp:RadioButton ID="rdoBlue" runat="server" GroupName="Color" Text="Blue" />
            <br /><br />

            <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            <asp:Button ID="btnExit" runat="server" Text="Exit" OnClientClick="window.close(); return false;" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server" Text="" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>

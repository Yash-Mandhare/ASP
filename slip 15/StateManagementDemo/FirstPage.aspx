<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="StateManagementDemo.FirstPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ViewState and Query String Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter your name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
            
            <asp:Button ID="btnStore" runat="server" Text="Store in ViewState" OnClick="btnStore_Click" /><br /><br />
            
            <asp:Label ID="lblViewState" runat="server" ForeColor="Green"></asp:Label><br /><br />
            
            <asp:HyperLink ID="hlQueryString" runat="server" Text="Go to Page2 (via Query String)"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
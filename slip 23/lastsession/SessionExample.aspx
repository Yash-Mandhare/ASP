<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionExample.aspx.cs" Inherits="lastsession.SessionExample" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Session State Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>ASP.NET Session State Example</h2>

        <asp:Label ID="lblPreviousText" runat="server" Text="Previous session text will appear here." Font-Bold="true" ForeColor="Blue"></asp:Label>
        <br /><br />

        <asp:TextBox ID="txtInput" runat="server" Width="300px" placeholder="Enter your text here"></asp:TextBox>
        <br /><br />

        <asp:Button ID="btnSave" runat="server" Text="Save Text to Session" OnClick="btnSave_Click" />
        &nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear Session" OnClick="btnClear_Click" />

    </form>
</body>
</html>

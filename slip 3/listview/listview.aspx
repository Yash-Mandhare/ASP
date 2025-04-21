<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listview.aspx.cs" Inherits="listview.listview" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ListBox Item Transfer</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h2>Transfer Items Between ListBoxes</h2>

            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Width="150" Height="150"></asp:ListBox>
            <asp:Button ID="btnTransfer" runat="server" Text=">>" OnClick="btnTransfer_Click" />
            <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple" Width="150" Height="150"></asp:ListBox>
        </div>
    </form>
</body>
</html>

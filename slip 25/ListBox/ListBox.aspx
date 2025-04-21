<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBox.aspx.cs" Inherits="ListBox.ListBox" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Selection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:400px; margin:50px auto;">
            <h2>Select Employees</h2>

            <asp:ListBox ID="lstEmployees" runat="server" SelectionMode="Multiple" Width="200px" Height="150px">
                <asp:ListItem>John Doe</asp:ListItem>
                <asp:ListItem>Jane Smith</asp:ListItem>
                <asp:ListItem>David Wilson</asp:ListItem>
                <asp:ListItem>Sarah Johnson</asp:ListItem>
                <asp:ListItem>Emily Brown</asp:ListItem>
            </asp:ListBox>

            <br /><br />
            <asp:Button ID="btnAddSelected" runat="server" Text="Add Selected" OnClick="btnAddSelected_Click" />
            &nbsp;
            <asp:Button ID="btnAddAll" runat="server" Text="Add All" OnClick="btnAddAll_Click" />
            <br /><br />

            <asp:TextBox ID="txtSelectedEmployees" runat="server" TextMode="MultiLine" Rows="6" Columns="40"></asp:TextBox>
            <br /><br />
        </div>
    </form>
</body>
</html>
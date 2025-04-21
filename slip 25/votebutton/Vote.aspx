<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="votebutton.Vote" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Book Voting</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>How is the book "ASP.NET with C# by Vipul Prakashan"?</h2>

        <asp:RadioButtonList ID="rblChoices" runat="server">
            <asp:ListItem Text="Good" Value="Good" />
            <asp:ListItem Text="Satisfactory" Value="Satisfactory" />
            <asp:ListItem Text="Bad" Value="Bad" />
        </asp:RadioButtonList>

        <asp:Button ID="btnVote" runat="server" Text="VOTE" OnClick="btnVote_Click" /><br /><br />

        <asp:Label ID="lblGood" runat="server" Text="" /><br />
        <asp:Label ID="lblSatisfactory" runat="server" Text="" /><br />
        <asp:Label ID="lblBad" runat="server" Text="" /><br />
    </form>
</body>
</html>

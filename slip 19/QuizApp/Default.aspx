<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QuizApp.Default" %>

<!DOCTYPE html>
<html>
<head>
    <title>Simple Quiz</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Simple Quiz</h2>

        <p>1. What is the capital of India?</p>
        <asp:RadioButtonList ID="q1" runat="server">
            <asp:ListItem>Delhi</asp:ListItem>
            <asp:ListItem>Mumbai</asp:ListItem>
            <asp:ListItem>Kolkata</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
        </asp:RadioButtonList>

        <p>2. HTML stands for?</p>
        <asp:RadioButtonList ID="q2" runat="server">
            <asp:ListItem>HighText Machine Language</asp:ListItem>
            <asp:ListItem>HyperText Markup Language</asp:ListItem>
            <asp:ListItem>HyperLoop Text Mark Language</asp:ListItem>
            <asp:ListItem>None</asp:ListItem>
        </asp:RadioButtonList>

        <p>3. Which one is a programming language?</p>
        <asp:RadioButtonList ID="q3" runat="server">
            <asp:ListItem>HTML</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
            <asp:ListItem>Bootstrap</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br /><br />
        <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Green" />
    </form>
</body>
</html>
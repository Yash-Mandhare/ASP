<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileList.aspx.cs" Inherits="allthefiles.FileList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>File List</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Files in Directory</h2>
        <asp:GridView ID="gvFiles" runat="server" AutoGenerateColumns="False" BorderWidth="1" CellPadding="5">
            <Columns>
                <asp:BoundField DataField="FileName" HeaderText="File Name" />
                <asp:BoundField DataField="Size" HeaderText="Size (KB)" />
                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
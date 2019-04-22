<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="session3a.aspx.cs" Inherits="lab05_davis.session3a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            &nbsp;<asp:Button ID="btnPage2" runat="server" OnClick="btnPage2_Click" style="height: 29px" Text="Page 2" />
            <br />
            <asp:TextBox ID="txtMessage" runat="server" Height="122px" TextMode="MultiLine" Width="311px"></asp:TextBox>
        </div>
    </form>
</body>
</html>

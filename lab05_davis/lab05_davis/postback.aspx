<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postback.aspx.cs" Inherits="lab05_davis.postback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Postback Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lbxNames" runat="server" Height="304px" Width="69px"></asp:ListBox>
            <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display" />
            <br />
            <asp:TextBox ID="txtMessage" runat="server" Height="127px" TextMode="MultiLine" Width="287px"></asp:TextBox>
        </div>
    </form>
</body>
</html>

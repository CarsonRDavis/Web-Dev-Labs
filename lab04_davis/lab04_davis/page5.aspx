<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page5.aspx.cs" Inherits="lab04_davis.page5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="default.aspx">Back</asp:HyperLink>
            <br />
            <asp:RadioButtonList ID="rblTeams" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Blazers">VSU</asp:ListItem>
                <asp:ListItem Value="Yellow Jackets">GT</asp:ListItem>
                <asp:ListItem Value="Panthers">GSU</asp:ListItem>
                <asp:ListItem Value="Owls">KSU</asp:ListItem>
                <asp:ListItem Value="Cougars">CSU</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display" />
            <asp:TextBox ID="txtMessage" runat="server" Height="79px" Width="246px" TextMode="MultiLine"></asp:TextBox>
        </div>
    </form>
</body>
</html>

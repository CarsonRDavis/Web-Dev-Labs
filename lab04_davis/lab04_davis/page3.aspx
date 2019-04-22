<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page3.aspx.cs" Inherits="lab04_davis.page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="default.aspx">Back</asp:HyperLink>
        <div>
            <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display" />
            <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remove Selected" />
            <asp:ListBox ID="lbxNames" runat="server" Height="105px" SelectionMode="Multiple" Width="102px">
                <asp:ListItem Value="101">Carson</asp:ListItem>
                <asp:ListItem Value="46">James</asp:ListItem>
                <asp:ListItem Value="99">Johnnie</asp:ListItem>
                <asp:ListItem Value="11">Aquila</asp:ListItem>
                <asp:ListItem Value="42">Levi</asp:ListItem>
            </asp:ListBox>
            <asp:TextBox ID="txtMessage" runat="server" Height="95px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page6.aspx.cs" Inherits="lab04_davis.page6" %>

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
        </div>
        <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display" />
        <asp:Calendar ID="cal" runat="server"></asp:Calendar>
        <asp:TextBox ID="txtMessage" runat="server" Height="85px" TextMode="MultiLine" Width="298px"></asp:TextBox>
    </form>
</body>
</html>

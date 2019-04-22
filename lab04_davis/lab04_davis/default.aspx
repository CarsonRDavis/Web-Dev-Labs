<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="lab04_davis._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 04 - Carson Davis</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Lab 04 - Carson Davis</h2>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="page2.aspx">Page 2</asp:HyperLink>
            &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="page3.aspx">Page 3</asp:HyperLink>
            &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="page4.aspx">Page 4</asp:HyperLink>
            &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="page5.aspx">Page 5</asp:HyperLink>
            &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="page6.aspx">Page 6</asp:HyperLink>
            <br />
            <asp:Button ID="btnHideShow" runat="server" OnClick="btnHideShow_Click" Text="Hide" />
            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnHideShow2" runat="server" OnClick="btnHideShow2_Click" Text="Hide" />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

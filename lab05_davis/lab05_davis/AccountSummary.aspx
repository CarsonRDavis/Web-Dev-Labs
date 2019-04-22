<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountSummary.aspx.cs" Inherits="lab05_davis.AccountSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <h2>Account Summary</h2>
<p>
	<asp:Button ID="btnAddAccount" runat="server" OnClick="btnAddAccount_Click" Text="Add Account" />&nbsp;
	<asp:Button ID="btnStartOver" runat="server" OnClick="btnStartOver_Click" Text="Start Over" />
&nbsp;<asp:DropDownList ID="ddlNames" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNames_SelectedIndexChanged">
    </asp:DropDownList>
</p>
<p>
	<asp:TextBox ID="txtSummary" runat="server" Height="305px" TextMode="MultiLine" Width="371px"></asp:TextBox>
</p>


        </div>
    </form>
</body>
</html>

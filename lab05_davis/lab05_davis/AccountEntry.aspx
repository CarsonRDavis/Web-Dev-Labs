<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountEntry.aspx.cs" Inherits="lab05_davis.AccountEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Account Entry</h2>
<p>
	Num Accounts:
	<asp:Label ID="lblNumAccounts" runat="server" Text="Label"></asp:Label>
</p>
<table>
	<tr>
		<td>Id</td>
		<td>
			<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>
			<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>Balance</td>
		<td>
			<asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
		</td>
	</tr>
</table>
<asp:Button ID="btnAddAccount" runat="server" OnClick="btnAddAccount_Click" Text="Add" />
&nbsp;
<asp:Button ID="btnClearAll" runat="server" Text="Clear All" OnClick="btnClearAll_Click" />
&nbsp;
<asp:Button ID="btnSummary" runat="server" Text="Summary" OnClick="btnSummary_Click" />
<br />
<asp:TextBox ID="txtMessage" runat="server" Height="213px" TextMode="MultiLine" Width="344px"></asp:TextBox>
<br />

        </div>
    </form>
</body>
</html>

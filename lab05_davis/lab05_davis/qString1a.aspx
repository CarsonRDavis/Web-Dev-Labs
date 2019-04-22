<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qString1a.aspx.cs" Inherits="lab05_davis.qString1a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<table>
	<tr>
		<td>
<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
		</td>
		<td>
<asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
		</td>
		<td>
<asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
		</td>
	</tr>
</table>
<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
<br />
<asp:TextBox ID="txtMessage" runat="server" Height="189px" TextMode="MultiLine" Width="304px"></asp:TextBox>

        </div>
    </form>
</body>
</html>

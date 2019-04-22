<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="lab08_davis.Page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Insert Sql Statements</p>
<p>
	<asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
	&nbsp;Team ID*<asp:TextBox ID="txtTeamID" runat="server" Width="22px"></asp:TextBox>
	&nbsp;LName<asp:TextBox ID="txtLName" runat="server" Width="98px"></asp:TextBox>
	&nbsp;FName<asp:TextBox ID="txtFName" runat="server" Width="98px"></asp:TextBox>
	&nbsp;PNum<asp:TextBox ID="txtPNum" runat="server" Width="38px"></asp:TextBox>
	&nbsp;BDate<asp:TextBox ID="txtBDate" runat="server" Width="98px"></asp:TextBox>
</p>
<p>
	*Team ID must be valid value from the Teams table in the TeamID column (1,2,3,4, or 8, unless you have deleted a team)
</p>

<asp:GridView ID="gvPlayers" runat="server">
</asp:GridView>
<p>
	<asp:TextBox ID="txtMsg" runat="server" Height="314px" TextMode="MultiLine" Width="593px"></asp:TextBox>
</p>

        </div>
    </form>
</body>
</html>

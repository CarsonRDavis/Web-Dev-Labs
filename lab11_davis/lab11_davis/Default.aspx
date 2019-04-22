<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab11_davis.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HW11 - Carson Davis
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlTeams" runat="server" AutoPostBack="True" DataSourceID="dsTeams" DataTextField="Name" DataValueField="TeamID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsTeams" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT [Name], [TeamID] FROM [Teams]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="gvPlayers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                    <asp:BoundField DataField="PNumber" HeaderText="PNumber" SortExpression="PNumber" />
                    <asp:BoundField DataField="BDate" DataFormatString="{0:MM/dd/yyyy}" HeaderText="BDate" SortExpression="BDate" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT [FName], [LName], [PNumber], [BDate] FROM [Players] WHERE ([TeamID] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlTeams" Name="TeamID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

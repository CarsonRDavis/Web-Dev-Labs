<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab08_davis.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><a href="Page2.aspx">Page 2</a>, Page 3, Page 4</p>
            <h2>Data Source Example</h2>
            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Players]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PlayerID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="PlayerID" HeaderText="PlayerID" InsertVisible="False" ReadOnly="True" SortExpression="PlayerID" />
                    <asp:BoundField DataField="TeamID" HeaderText="TeamID" SortExpression="TeamID" />
                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:BoundField DataField="PNumber" HeaderText="PNumber" SortExpression="PNumber" />
                    <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

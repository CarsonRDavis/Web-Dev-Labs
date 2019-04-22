<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="lab09_davis.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvPlayers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsPlayers" DataKeyNames="PlayerID" OnSelectedIndexChanged="gvPlayers_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Team" SortExpression="TeamID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="gvDdlTeams" runat="server" DataSourceID="dsSqlTeams" DataTextField="Name" DataValueField="TeamID" SelectedValue='<%# Bind("TeamID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsSqlTeams" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT [TeamID], [Name] FROM [Teams]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="gvLblTeamName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            <asp:HiddenField ID="TeamIDHidden" runat="server" Visible="false" Value='<%# Eval("TeamID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PlayerID" HeaderText="PlayerID" InsertVisible="False" ReadOnly="True" SortExpression="PlayerID" />
                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:BoundField DataField="PNumber" HeaderText="PNumber" SortExpression="PNumber" />
                    <asp:BoundField DataField="BDate" DataFormatString="{0:MM/dd/yyyy}" HeaderText="BDate" SortExpression="BDate" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" Visible="False" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" DeleteCommand="DELETE FROM [Players] WHERE [PlayerID] = ?" InsertCommand="INSERT INTO [Players] ([TeamID], [PlayerID], [LName], [FName], [PNumber], [BDate]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT Players.TeamID, Players.PlayerID, Players.LName, Players.FName, Players.PNumber, Players.BDate, Teams.Name FROM (Players INNER JOIN Teams ON Players.TeamID = Teams.TeamID)" UpdateCommand="UPDATE [Players] SET [TeamID] = ?, [LName] = ?, [FName] = ?, [PNumber] = ?, [BDate] = ? WHERE [PlayerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="PlayerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeamID" Type="Int32" />
                    <asp:Parameter Name="PlayerID" Type="Int32" />
                    <asp:Parameter Name="LName" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="PNumber" Type="Int32" />
                    <asp:Parameter Name="BDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TeamID" Type="Int32" />
                    <asp:Parameter Name="LName" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="PNumber" Type="Int32" />
                    <asp:Parameter Name="BDate" Type="DateTime" />
                    <asp:Parameter Name="PlayerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:TextBox ID="txtMsg" runat="server" Height="149px" TextMode="MultiLine" Width="369px"></asp:TextBox>
        </div>
    </form>
</body>
</html>

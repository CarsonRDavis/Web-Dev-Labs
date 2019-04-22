<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab10_davis.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 10 - Carson Davis</title>
    <script type="text/javascript">
    function ConfirmDelete() 
    {
        return window.confirm("Are you sure you want to delete this entry?");
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Lab 10</h2>
            <p>Last Name
	            <asp:TextBox ID="txtLName" runat="server" Width="50px"></asp:TextBox>
	            &nbsp;First Name
	            <asp:TextBox ID="txtFName" runat="server" Width="50px"></asp:TextBox>
	            &nbsp;Jersey Num
	            <asp:TextBox ID="txtPNumber" runat="server" Width="20px"></asp:TextBox>
	            &nbsp;Birth Date
	            <asp:TextBox ID="txtBDate" runat="server" Width="50px"></asp:TextBox>
	            &nbsp;Team
	            <asp:DropDownList ID="ddTeams" runat="server" DataSourceID="dsTeams" DataTextField="Name" DataValueField="TeamID">
	            </asp:DropDownList>
	            <asp:SqlDataSource ID="dsTeams" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT [TeamID], [Name] FROM [Teams]"></asp:SqlDataSource>
	            &nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            </p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <p>
            </p>
            <asp:GridView ID="gvPlayers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsPlayers" ForeColor="#333333" GridLines="None" DataKeyNames="PlayerID" OnSelectedIndexChanged="gvPlayers_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" OnClientClick="return ConfirmDelete()">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PlayerID" HeaderText="PlayerID" InsertVisible="False" ReadOnly="True" SortExpression="PlayerID" />
                    <asp:TemplateField HeaderText="Team" SortExpression="TeamID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="gvDdlTeams" runat="server" DataSourceID="dsTeams" DataTextField="Name" DataValueField="TeamID" SelectedValue='<%# Bind("TeamID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblGvTeamName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:TemplateField HeaderText="PNumber" SortExpression="PNumber">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtGvPNum" runat="server" Text='<%# Bind("PNumber") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGvPNum" ErrorMessage="Jersey Number must be between 1 and 99." ForeColor="Red" MaximumValue="99" MinimumValue="1" SetFocusOnError="True" Type="Integer" Width="20px">*</asp:RangeValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblGvPNum" runat="server" Text='<%# Bind("PNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="BDate" DataFormatString="{0:MM/dd/yyyy}" HeaderText="BDate" SortExpression="BDate" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" Visible="False" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="dsPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:playersConnectionString %>" DeleteCommand="DELETE FROM [Players] WHERE [PlayerID] = ?" InsertCommand="INSERT INTO [Players] ([TeamID], [LName], [FName], [PNumber], [BDate]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:playersConnectionString.ProviderName %>" SelectCommand="SELECT Players.PlayerID, Players.TeamID, Players.LName, Players.FName, Players.PNumber, Players.BDate, Teams.Name FROM (Players INNER JOIN Teams ON Players.TeamID = Teams.TeamID)" UpdateCommand="UPDATE [Players] SET [TeamID] = ?, [LName] = ?, [FName] = ?, [PNumber] = ?, [BDate] = ? WHERE [PlayerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="PlayerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeamID" Type="Int32" />
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
            <asp:TextBox ID="txtMsg" runat="server" Height="75px" TextMode="MultiLine" Width="329px"></asp:TextBox>
        </div>
    </form>
</body>
</html>

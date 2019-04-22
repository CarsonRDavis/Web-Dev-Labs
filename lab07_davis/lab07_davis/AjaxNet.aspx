<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxNet.aspx.cs" Inherits="lab07_davis.AjaxNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax .Net Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Simple AJAX Example using .Net Server Controls</h2>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            Ajax: Click a name in either list and it moves to the other list<br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
&nbsp;<asp:ListBox ID="lbxLeft" runat="server" AutoPostBack="True" Height="147px" OnSelectedIndexChanged="lbxLeft_SelectedIndexChanged" Width="137px">
                        <asp:ListItem>Dontavious</asp:ListItem>
                        <asp:ListItem>Linda</asp:ListItem>
                        <asp:ListItem>Xavier</asp:ListItem>
                    </asp:ListBox>
                    &nbsp;&nbsp;
                    <asp:ListBox ID="lbxRight" runat="server" AutoPostBack="True" Height="147px" OnSelectedIndexChanged="lbxRight_SelectedIndexChanged" Width="137px">
                        <asp:ListItem>Wally</asp:ListItem>
                        <asp:ListItem>Suzy</asp:ListItem>
                        <asp:ListItem>Remmy</asp:ListItem>
                    </asp:ListBox>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnMoveFirst" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="...moving name"></asp:Label>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:Button ID="btnMoveFirst" runat="server" OnClick="Button1_Click" Text="Move First" />
        </div>
    </form>
</body>
</html>

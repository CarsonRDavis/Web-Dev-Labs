<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab06_davis.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 671px;
            height: 373px;
        }
        .auto-style2 {
            width: 581px;
            height: 373px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtMessage" runat="server" Height="105px" TextMode="MultiLine" Width="285px"></asp:TextBox>
            <br />
            <img class="auto-style1" src="domain_model.png" /><img class="auto-style2" src="domain_model1.png" /></div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="lab03_davis._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 03 - Carson Davis</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Lab 03 - Carson Davis</h2>
            <p>
                <asp:Button ID="btnCompute" runat="server" OnClick="btnCompute_Click" Text="Square Root" />
                <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
                <asp:Label ID="lblAnswer" runat="server"></asp:Label>
            </p>
        </div>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtInput" ErrorMessage="Input must be positive" ForeColor="Red" MaximumValue="Double.MaxValue" MinimumValue="0"></asp:RangeValidator>
    </form>
    <p>
        The reason the answer is always 13 is because the page is reloading when you push the button, and when the page is loaded, the lblInput.Text is automatically</p>
    <p>
        set to the value in the Page_Load area and then it follows through with the button click.</p>
</body>
</html>

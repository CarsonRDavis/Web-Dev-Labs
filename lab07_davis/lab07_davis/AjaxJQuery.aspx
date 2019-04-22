<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxJQuery.aspx.cs" Inherits="lab07_davis.AjaxJQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax via jQuery</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function noSuggestions() {
    $("#nameList").text("***No suggestions");
}

$(document).ready(function() {
    $("#txtName").keyup(function () {
        var userData = $("#txtName").val();
        if (userData.length == 0)
            return noSuggestions();

        $.ajax({
            type: "GET",
            url: "Suggestions.aspx/GetSuggestions",
            data: { q:userData },
            success: function (response) {
                if (response.length == 0)
                    return noSuggestions();
                $("#nameList").text(response);
            }
        });
    });
});
</script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><b>Simple AJAX Example Using jQuery</b></p>
<p>This example illustrates a suggestion list as the user types in the TextBox.</p>
<p>Enter a name: 
	<input id="txtName" type="text" name="txtName" />
</p>
<%--Suggestions will go in div below--%>
<div class="style1" id="nameList"></div>

        </div>
    </form>
</body>
</html>

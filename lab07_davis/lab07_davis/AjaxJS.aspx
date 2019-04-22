<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxJS.aspx.cs" Inherits="lab07_davis.AjaxJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax via Javascript</title>
    <script type="text/javascript">
    var ajaxRequest; // Need to use in both functions below.

    // Takes character(s) from user and sends to server
    function getSuggestions(strName) {
        if (strName.length == 0) { // If no data, clear suggestions.
            document.getElementById("nameList").innerHTML = '';
            return;
        }
        if (!window.XMLHttpRequest) {
            alert("Browser doesn't support XMLHttpRequest object");
            return;
        }
		// Create the (Ajax) request object.
		ajaxRequest = new XMLHttpRequest();
		// Set the call-back function. When the server sends its response, this 
		// method, displaySuggestions will be called
		ajaxRequest.onreadystatechange = displaySuggesionts;
		// Set the location to send the request to, "suggestions.aspx" with the 
		// characters the user has typed in, in the query string
		ajaxRequest.open("GET", "suggestions.aspx?q=" + strName, true);
		// Send request to server.
        ajaxRequest.send();
    } 
    // When server responds, displays suggestions.
    function displaySuggesionts() {
        // readyState of 4 or 'complete' represents that data has been returned.
		if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
			// Get the suggestions out of the request object.
            var suggestions = ajaxRequest.responseText;
            if (suggestions.length == 0) {
                document.getElementById("nameList").innerHTML = "***No suggestions";
                return;
			}
			// Display suggestions.
            document.getElementById("nameList").innerHTML = suggestions;
        }
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><b>Simple AJAX Example Using JavaScript XMLHttpRequest Directly</b></p>
            <p>This example illustrates a suggestion list as the user types in the TextBox.</p>
            <p>Enter a name: 
	            <input id="txtName" onkeyup="getSuggestions(this.value);" type="text" name="txtName" />
            </p>
            <%--Suggestions will go in div below--%>
            <div class="style1" id="nameList"></div>
        </div>
    </form>
</body>
</html>

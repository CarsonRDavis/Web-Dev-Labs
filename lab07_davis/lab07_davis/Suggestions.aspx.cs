using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab07_davis
{
    public partial class Suggestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetSuggestions();
        }

        void GetSuggestions()
        {
            // Get the request query 
            string strQuery = Request.QueryString["q"].ToString();

            //Create the string to be sent back in the response. 
            string strSuggestions = "";

            //An arbitrary array of names that are used as suggestions. 
            string[] arrStrNames = new string[]{ "Abbie Hoffman", "Bob Weir", "Bob Dylan", "Bill Monroe", "BB King", "Cat Stevens", "Carly Simon",
        "Del McCoury", "David Grisman", "Doc Watson", "Earl Scruggs", "Frank Zappa", "Guy Clark", "Greg Allman",
        "Ian Anderson", "Jack Williams", "John Doe", "Jimi Hendrix", "Janis Joplin", "Jerry Garcia", "Jimmy Rogers",
        "Peter Rowan", "Pete Townsend", "Townes Van Zandt", "Verlon Thompson" };

            // Loop through the names, appending matches 
            for (int i = 0; i < arrStrNames.GetLength(0); i++)
            {
                // Make sure input is smaller than the current name from the list.
                if (strQuery.Length <= arrStrNames[i].Length)
                    // See if the current name begins with the input string. 
                    if (arrStrNames[i].ToLower().Substring(0, strQuery.Length) == strQuery.ToLower())
                    {
                        // Add name and title as an xml element.
                        strSuggestions += arrStrNames[i] + ", ";
                    }
            }

            // Send the response
            Response.Write(strSuggestions);
            // End the page lifecycle and send immediately.
            Response.End();
        }

    }
}
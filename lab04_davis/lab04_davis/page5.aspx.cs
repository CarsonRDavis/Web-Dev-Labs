using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab04_davis
{
    public partial class page5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            String msg = "Your favorite team is: " + Environment.NewLine;
            msg += "Text: " + rblTeams.SelectedItem.Text + ", "
                   + "Value: " + rblTeams.SelectedItem.Value + ", "
                   + "Selected: " + rblTeams.SelectedItem.Selected
                   + Environment.NewLine;
            txtMessage.Text = msg;
        }
    }
}
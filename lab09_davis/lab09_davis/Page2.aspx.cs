using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab09_davis
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvPlayers_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Bound Fields
            int playerID = Convert.ToInt32(gvPlayers.SelectedRow.Cells[2].Text);
            string lName = gvPlayers.SelectedRow.Cells[3].Text;
            string fName = gvPlayers.SelectedRow.Cells[4].Text;
            int jerseyNum = Convert.ToInt32(gvPlayers.SelectedRow.Cells[5].Text);
            DateTime bDate = Convert.ToDateTime(gvPlayers.SelectedRow.Cells[6].Text);

            // Template Field
            Label lblTeamName =
         (Label)gvPlayers.SelectedRow.FindControl("gvLblTeamName");

            string teamName = lblTeamName.Text;

            // Hidden Field
            HiddenField teamIDHidden =
             (HiddenField)gvPlayers.SelectedRow.FindControl("TeamIDHidden");

            string teamID = teamIDHidden.Value;

            string output = String.Format("PlayerID={0}, LName={1}, FName={2}, " +
                                          "JerseyNum={3}, BDate={4}, " +
                                          "Team={5}, TeamID={6}",
                                           playerID, lName, fName,
                                           jerseyNum, bDate.ToShortDateString(),
                                           teamName, teamID);
            txtMsg.Text = output;
        }
    }
}
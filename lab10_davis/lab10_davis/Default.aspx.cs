using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab10_davis
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            // Connect parameters to data entry controls
            dsPlayers.InsertParameters["TeamID"].DefaultValue = ddTeams.SelectedValue;
            dsPlayers.InsertParameters["LName"].DefaultValue = txtLName.Text;
            dsPlayers.InsertParameters["FName"].DefaultValue = txtFName.Text;
            dsPlayers.InsertParameters["PNumber"].DefaultValue = txtPNumber.Text;
            dsPlayers.InsertParameters["BDate"].DefaultValue = txtBDate.Text;

            // Insert player
            dsPlayers.Insert();

            // Clear fields
            txtLName.Text = string.Empty;
            txtFName.Text = string.Empty;
            txtPNumber.Text = string.Empty;
            txtBDate.Text = string.Empty;
        }

        protected void gvPlayers_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Bound Fields
            int playerID = Convert.ToInt32(gvPlayers.SelectedRow.Cells[2].Text);
            string lName = gvPlayers.SelectedRow.Cells[4].Text;
            string fName = gvPlayers.SelectedRow.Cells[5].Text;
            //int jerseyNum = Convert.ToInt32(gvPlayers.SelectedRow.Cells[5].Text);
            DateTime bDate = Convert.ToDateTime(gvPlayers.SelectedRow.Cells[7].Text);

            // Template Fields
            Label lblTeamName = (Label)gvPlayers.SelectedRow.FindControl("lblGvTeamName");
            string teamName = lblTeamName.Text;

            Label lblJerseyNum = (Label)gvPlayers.SelectedRow.FindControl("lblGvPNum");
            int jerseyNum = Convert.ToInt32(lblJerseyNum.Text);

            // Hidden Field
            //HiddenField teamIDHidden = (HiddenField)gvPlayers.SelectedRow.FindControl("TeamIDHidden");
            //string teamID = teamIDHidden.Value;

            string output = String.Format("PlayerID={0}, LName={1}, FName={2}, " +
                                            "JerseyNum={3}, BDate={4}, " +
                                            "Team={5}",
                                            playerID, lName, fName,
                                            jerseyNum, bDate.ToShortDateString(),
                                            teamName);
            txtMsg.Text = output;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab09_davis
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvPlayers_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Getting value from a bound field.
            int playerID = Convert.ToInt32(gvPlayers.SelectedRow.Cells[1].Text);
            string lName = gvPlayers.SelectedRow.Cells[2].Text;
            string fName = gvPlayers.SelectedRow.Cells[3].Text;
            int jerseyNum = Convert.ToInt32(gvPlayers.SelectedRow.Cells[4].Text);
            DateTime bDate = Convert.ToDateTime(gvPlayers.SelectedRow.Cells[5].Text);

            string output = String.Format("PlayerID={0}, LName={1}, FName={2}, JerseyNum={3}, BDate={4}",
                playerID, lName, fName, jerseyNum, bDate.ToShortDateString());

            txtMsg.Text = output;
        }
    }
}
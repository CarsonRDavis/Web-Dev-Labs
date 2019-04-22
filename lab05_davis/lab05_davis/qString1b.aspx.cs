using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class qString1b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.AllKeys.Contains("fName"))
            {
                string fName = Request.QueryString["fName"];
                string lName = Request.QueryString["lName"];
                string msg = "Successful Login\n";
                msg += "First Name=" + fName + ", Last Name:" + lName;
                txtMessage.Text = msg;
            }

            else
            {
                string url = "qString1a.aspx?status=illegalAccess";
                Response.Redirect(url);
            }

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string url = "qString1a.aspx?status=logout";
            Response.Redirect(url);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class qString1a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.AllKeys.Contains("status"))
            {
                string status = Request.QueryString["status"];
                if (status.Equals("logout"))
                {
                    txtMessage.Text = "You are logged out";
                }

                else if (status.Equals("illegalAccess"))
                {
                    txtMessage.Text = "You must login";
                }
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string fName = txtFName.Text;
            string lName = txtLName.Text;
            string url = "qString1b.aspx?fName=" + fName + "&lName=" + lName;
            Response.Redirect(url);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab04_davis
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHideShow_Click(object sender, EventArgs e)
        {
            if (txtInput.Visible)
            {
                txtInput.Visible = false;
                btnHideShow.Text = "Show";
            }
            else
            {
                txtInput.Visible = true;
                btnHideShow.Text = "Hide";
            }

        }

        protected void btnHideShow2_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible)
            {
                Panel1.Visible = false;
                btnHideShow2.Text = "Show";
            }
            else
            {
                Panel1.Visible = true;
                btnHideShow2.Text = "Hide";
            }

        }
    }
}
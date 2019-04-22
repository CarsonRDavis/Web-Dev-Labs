using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class session3a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Sum"] == null)
                {
                    Sum = 0;
                }
                txtMessage.Text = "Current Sum: " + Sum + "\n";
            }


        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Sum += Convert.ToInt32(txtNum.Text);
            txtMessage.Text += "Sum=" + Sum + "\n";
        }

        public int Sum
        {
            get { return (int)Session["Sum"]; }
            set { Session["Sum"] = value; }
        }

        protected void btnPage2_Click(object sender, EventArgs e)
        {
            Response.Redirect("session3b.aspx");
        }
    }
}
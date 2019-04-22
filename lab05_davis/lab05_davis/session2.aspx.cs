using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class session2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Sum = 0;
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
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class session1 : System.Web.UI.Page
    {
        int sum;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session.Add("Sum", 0);
            }
            else
            {
                sum = (int)Session["Sum"];
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            sum += Convert.ToInt32(txtNum.Text);
            txtMessage.Text += "Sum=" + sum + "\n";
            Session.Add("Sum", sum);
        }
    }
}
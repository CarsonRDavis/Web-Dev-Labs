using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab03_davis
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtInput.Text = "169.0";
        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {
            String strInput = txtInput.Text;
            double dblInput = Convert.ToDouble(strInput);
            lblAnswer.Text = "Square Root = " + Math.Sqrt(dblInput);

        }
    }
}
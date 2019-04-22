using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab04_davis
{
    public partial class page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            string msg = string.Empty;
            foreach (ListItem li in lbxNames.Items)
            {
                if (li.Selected)
                {
                    msg += "Text: " + li.Text + ", "
                        + "Value: " + li.Value + ", "
                        + "Selected: " + li.Selected
                        + Environment.NewLine;
                }
            }
            txtMessage.Text = msg;
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            string msg = "Items removed:" + Environment.NewLine;
            for (int i = lbxNames.Items.Count - 1; i >= 0; i--)
            {
                ListItem li = lbxNames.Items[i];
                if (li.Selected)
                {
                    lbxNames.Items.Remove(li);
                    msg += "Text: " + li.Text + Environment.NewLine;
                }
            }
            txtMessage.Text = msg;
        }
    }
}
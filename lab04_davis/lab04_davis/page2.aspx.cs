using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab04_davis
{
    public partial class page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplayAll_Click(object sender, EventArgs e)
        {
            string msg = string.Empty;
            foreach (ListItem li in ddlNames.Items)
            {
                msg += "Text: " + li.Text + ", "
                    + "Value: " + li.Value + ", "
                    + "Selected: " + li.Selected
                    + Environment.NewLine;
            }
            txtMessage.Text = msg;
        }

        protected void btnDisplaySelected_Click(object sender, EventArgs e)
        {
            ListItem li = ddlNames.SelectedItem;
            string msg = Environment.NewLine + "In Click event" + Environment.NewLine
                + "   Text: " + li.Text + ", "
                + "Value: " + li.Value + ", "
                + "Selected: " + li.Selected;
            txtMessage.Text += msg;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string text = txtText.Text;
            string value = txtValue.Text;
            ListItem li = new ListItem(text, value);
            ddlNames.Items.Add(li);
        }

        protected void btnRemoveSelected_Click(object sender, EventArgs e)
        {
            ListItem li = ddlNames.SelectedItem;
            ddlNames.Items.Remove(li);
        }

        protected void ddlNames_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = ddlNames.SelectedItem;
            string msg = Environment.NewLine + "In SelectedIndexChanged event" + Environment.NewLine
                + "   Text: " + li.Text + ", "
                + "Value: " + li.Value + ", "
                + "Selected: " + li.Selected;
            txtMessage.Text += msg;
        }
    }
}
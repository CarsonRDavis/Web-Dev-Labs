using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab07_davis
{
    public partial class AjaxNet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbxLeft_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);

            ListItem selected = lbxLeft.SelectedItem;
            lbxRight.Items.Add(selected);
            for(int i = lbxLeft.Items.Count - 1; i > -1; i--)
            {
                if(lbxLeft.Items[i] == selected)
                {
                    lbxLeft.Items.RemoveAt(i);
                    break;
                }
            }
            lbxLeft.SelectedIndex = -1;
            lbxRight.SelectedIndex = -1;
        }

        protected void lbxRight_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);

            ListItem selected = lbxRight.SelectedItem;
            lbxLeft.Items.Add(selected);
            for (int i = lbxRight.Items.Count - 1; i > -1; i--)
            {
                if (lbxRight.Items[i] == selected)
                {
                    lbxRight.Items.RemoveAt(i);
                    break;
                }
            }
            lbxLeft.SelectedIndex = -1;
            lbxRight.SelectedIndex = -1;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (lbxLeft.Items.Count > 0)
            {
                ListItem li = lbxLeft.Items[0];
                lbxLeft.Items.Remove(li);
                lbxRight.Items.Add(li);
                lbxRight.SelectedIndex = -1;
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToLongTimeString();
        }
    }
}
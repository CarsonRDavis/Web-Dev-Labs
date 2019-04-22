using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class postback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ListItem li;
                li = new ListItem("Dave", "11");
                lbxNames.Items.Add(li);
                li = new ListItem("Paul", "44");
                lbxNames.Items.Add(li);
                li = new ListItem("Anna", "3");
                lbxNames.Items.Add(li);
            }
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            foreach(ListItem li in lbxNames.Items)
            {
                if (li.Selected)
                {
                    string msg = "Name: " + li.Text
                                + " Value: " + li.Value
                                + Environment.NewLine;
                    txtMessage.Text = msg;
                }
            }
        }
    }
}
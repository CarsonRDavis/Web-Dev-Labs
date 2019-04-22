using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace lab05_davis
{
    public partial class AccountSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (AcctMan == null)
                {
                    txtSummary.Text = "No accounts";
                }
                else
                {
                    displayAccounts();
                    ddlNames.DataSource = AcctMan.accounts;
                    ddlNames.DataTextField = "Name";
                    ddlNames.DataValueField = "ID";
                    ddlNames.DataBind();
                    ddlNames.Items.Insert(0, new ListItem("--Select Name--", "Ignore"));
                }
            }

        }

        void displayAccounts()
        {
            StringBuilder builder = new StringBuilder();

            builder.Append("Num accounts : " + AcctMan.accounts.Count + Environment.NewLine);
            builder.Append("Total balance: " + AcctMan.TotalBalance().ToString("C") + Environment.NewLine);
            builder.Append(Environment.NewLine);

            int count = 0;
            foreach (Account a in AcctMan.accounts)
            {
                count++;
                builder.Append(count + ". " + a + Environment.NewLine);
            }
            txtSummary.Text = builder.ToString();
        }

        public AccountManager AcctMan
        {
            get { return (AccountManager)Session["AccountManager"]; }
            set { Session["AccountManager"] = value; }
        }

        protected void btnStartOver_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AccountEntry.aspx");

        }

        protected void btnAddAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountEntry.aspx");
        }

        protected void ddlNames_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ddlNames.SelectedValue);
            Account a = AcctMan.accounts.Find(x => x.ID == id);
            txtSummary.Text = "Account selected:\n" + a.ToString();

        }
    }
}
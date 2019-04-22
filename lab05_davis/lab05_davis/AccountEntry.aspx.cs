using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab05_davis
{
    public partial class AccountEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (AcctMan == null)
            {
                AcctMan = new AccountManager();
            }
            lblNumAccounts.Text = AcctMan.accounts.Count.ToString();

        }

        public AccountManager AcctMan
        {
            get { return (AccountManager)Session["AccountManager"]; }
            set { Session["AccountManager"] = value; }
        }

        protected void btnAddAccount_Click(object sender, EventArgs e)
        {
            // Build Account
            int id = Convert.ToInt32(txtID.Text);
            string name = txtName.Text;
            double balance = Convert.ToDouble(txtBalance.Text);
            Account acct = new Account(id, name, balance);
            // Add to AccountManager
            AcctMan.accounts.Add(acct);
            // Update Label
            lblNumAccounts.Text = AcctMan.accounts.Count.ToString();
            // Display Account
            string msg = "Account added:\n" + acct;
            txtMessage.Text = msg;
            // Clear text boxes
            txtID.Text = null;
            txtName.Text = null;
            txtBalance.Text = null;
            txtID.Focus();

        }

        protected void btnClearAll_Click(object sender, EventArgs e)
        {
            AcctMan.accounts.Clear();
            lblNumAccounts.Text = AcctMan.accounts.Count.ToString();
            txtMessage.Text = null;

        }

        protected void btnSummary_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountSummary.aspx");
        }

    }
}
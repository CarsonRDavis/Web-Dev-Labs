using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;

namespace lab08_davis
{
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayData();
            }
        }

        private void displayData()
        {
            IDbCommand cmd = getCommand();
            cmd.CommandText = getSelectSql();
            try
            {
                // Open the connection.
                cmd.Connection.Open();
                IDataReader dr = cmd.ExecuteReader();
                gvPlayers.DataSource = dr;
                gvPlayers.DataBind();
                dr.Close();
                cmd.Connection.Close();
            }
            catch (Exception ex)
            {
                txtMsg.Text += ex.ToString();
            }
        }

        private IDbCommand getCommand()
        {
            IDbConnection con;
            IDbCommand cmd;
            con = new System.Data.OleDb.OleDbConnection();
            cmd = new System.Data.OleDb.OleDbCommand();
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["playersConnectionString"].ConnectionString;
            con.ConnectionString = connectionString;
            cmd.Connection = con;
            return cmd;
        }

        private string getSelectSql()
        {
            string sql =
                "SELECT " +
                    "Players.PlayerID, " +
                    "Players.TeamID, " +
                    "Players.LName, " +
                    "Players.FName, " +
                    "Players.PNumber, " +
                    "Players.BDate " +
                "FROM " +
                    "Players " +
                "ORDER BY " +
                    "Players.LName Asc, " +
                    "Players.FName Asc";
            return sql;
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            IDbCommand cmd = getCommand();
            cmd.CommandText = getInsertSql();
            txtMsg.Text = "INSERT Sql statement:\n" + cmd.CommandText + "\n";
            try
            {
                // Open the connection.
                cmd.Connection.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                txtMsg.Text += "Rows affected=" + rowsAffected + "\n";
                cmd.Connection.Close();
                displayData();
                clearTextBoxes();
            }
            catch (Exception ex)
            {
                txtMsg.Text += ex.ToString();
            }
        }

        private string getInsertSql()
        {
            string sql =
                "INSERT INTO Players " +
                    "(TeamID, LName, FName, PNumber, BDate) " +
                    "VALUES ( " +
                    txtTeamID.Text + ", " +
                    "'" + txtLName.Text + "', " +
                    "'" + txtFName.Text + "', " +
                    "'" + txtPNum.Text + "', " +
                    "'" + txtBDate.Text + "'" +
                    ")";
            return sql;
        }

        private void clearTextBoxes()
        {
            txtTeamID.Text = String.Empty;
            txtLName.Text = String.Empty;
            txtFName.Text = String.Empty;
            txtPNum.Text = String.Empty;
            txtBDate.Text = String.Empty;

        }
    }
}
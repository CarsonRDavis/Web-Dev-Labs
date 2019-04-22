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
    public partial class Page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayData();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            IDbCommand cmd = getCommand();
            cmd.CommandText = getDeleteSql();
            txtMsg.Text = "DELETE Sql statement:\n" + cmd.CommandText + "\n";
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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            IDbCommand cmd = getCommand();
            cmd.CommandText = getUpdateSql();
            txtMsg.Text = "UPDATE Sql statement:\n" + cmd.CommandText + "\n";
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


        private string getUpdateSql()
        {
            string sql =
                "UPDATE Players SET " +
                "TeamID=" + txtTeamID.Text + ", " +
                "LName='" + txtLName.Text + "', " +
                "FName='" + txtFName.Text + "', " +
                "PNumber=" + txtPNum.Text + ", " +
                "BDate='" + txtBDate.Text + "' " +
                "WHERE PlayerID=" + txtPlayerID.Text;
            return sql;
        }

        private void clearTextBoxes()
        {
            txtPlayerID.Text = String.Empty;
            txtTeamID.Text = String.Empty;
            txtLName.Text = String.Empty;
            txtFName.Text = String.Empty;
            txtPNum.Text = String.Empty;
            txtBDate.Text = String.Empty;
            txtPlayerIDDelete.Text = String.Empty;
        }


        private string getDeleteSql()
        {
            string sql =
                "DELETE FROM Players WHERE PlayerID=" + txtPlayerIDDelete.Text;
            return sql;
        }

    }
}
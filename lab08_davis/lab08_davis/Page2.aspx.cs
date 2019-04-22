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
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReadData_Click(object sender, EventArgs e)
        {
            // Create connection object
            IDbConnection con = new OleDbConnection();
            // Create command object
            IDbCommand cmd = new OleDbCommand();

            // Get connection string from web.config. Change the name of the connection string!!!
            string conn = ConfigurationManager.ConnectionStrings["playersConnectionString"].ConnectionString;

            // Attach connection string to connection object.
            con.ConnectionString = conn;

            // Attach the connection object to the command object
            cmd.Connection = con;

            // Display information about the connection.
            txtMsg.Text = "***Connection String: \n" + con.ConnectionString + "\n\n";
            txtMsg.Text += "***Connection State: " + con.State + "\n\n";

            // Build sql string
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

            // Add sql to command object
            cmd.CommandText = sql;
            // Display SQL statement. Very useful debugging technique.
            txtMsg.Text += "***CommandText: " + cmd.CommandText + "\n\n";

            try
            {
                // Open the connection.
                cmd.Connection.Open();
                txtMsg.Text += "***Connection state: " + cmd.Connection.State + "\n\n";
                // Read the data and put the results in data reader.
                IDataReader dr = cmd.ExecuteReader();
                txtMsg.Text += "***DataReader.IsClosed: " + dr.IsClosed + "\n\n";

                // Read the data from the data reader. 
                // Note that this is one-pass, forward only.
                while (dr.Read())
                {
                    // Read the data. Must specify the data type you 
                    // are reading (e.g. GetInt32) and the position
                    // in the reader: 0, 1, etc. Note that this order
                    // is the same as the order in the SQL statement.
                    int pID = dr.GetInt32(0);
                    int tID = dr.GetInt32(1);
                    string lName = dr.GetString(2);
                    string fName = dr.GetString(3);
                    int jerNum = dr.GetInt32(4);
                    DateTime bDate = dr.GetDateTime(5);

                    // Do something with the data, i.e. put it in a textbox.
                    txtMsg.Text += pID + " " + tID + " " + lName + " " + fName + " " + jerNum + " " +
                                   bDate.ToShortDateString() + "\n";
                }

                // Close data reader and connection
                dr.Close();
                cmd.Connection.Close();
                txtMsg.Text += "***DataReader.IsClosed: " + dr.IsClosed + "\n\n";
                txtMsg.Text += "***Connection state: " + cmd.Connection.State + "\n\n";

            }
            catch (Exception ex)
            {
                txtMsg.Text += ex.ToString();
            }


        }
    }
}
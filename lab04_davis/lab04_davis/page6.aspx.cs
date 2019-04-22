using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab04_davis
{
    public partial class page6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            DateTime date = cal.SelectedDate;
            string msg = "Date properties" + Environment.NewLine;
            msg += "Short date string:" + date.ToShortDateString() + Environment.NewLine;
            msg += "Day:" + date.Day;
            msg += ", Month:" + date.Month;
            msg += ", Year:" + date.Year + Environment.NewLine;
            msg += "Day of week:" + date.DayOfWeek + Environment.NewLine;
            msg += "Day of year:" + date.DayOfYear + Environment.NewLine;

            // Illustrates the AddDays method
            DateTime date2 = date.AddDays(3);
            msg += "3 days from now:" + date2.ToShortDateString() + Environment.NewLine;

            txtMessage.Text = msg;
        }
    }
}
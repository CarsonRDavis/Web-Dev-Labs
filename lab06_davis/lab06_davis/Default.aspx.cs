using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab06_davis
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dog d = new Dog("Spot", 3);
            Person p = new Person("Roe");
            p.Dogs.Add(d);
            p.Dogs.Add(new Dog("Juno", 4));

            foreach (Dog dog in p.Dogs)
            {
                txtMessage.Text += dog.Name + ", " + dog.Age + "\n";
            }
        }
    }
}
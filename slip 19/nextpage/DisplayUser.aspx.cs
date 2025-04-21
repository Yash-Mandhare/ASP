using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nextpage
{
    public partial class DisplayUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = "Name: " + Session["Name"];
            lblEmail.Text = "Email: " + Session["Email"];
            lblPhone.Text = "Phone: " + Session["Phone"];
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemo
{
    public partial class SecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.QueryString["user"];
            if (!string.IsNullOrEmpty(user))
            {
                lblQueryStringValue.Text = "Received via Query String: " + user;
            }
            else
            {
                lblQueryStringValue.Text = "No Query String data received.";
            }
        }
    }
}
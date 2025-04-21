using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validationcompare
{
    public partial class CompareValidation : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Set UnobtrusiveValidationMode to None to avoid script errors
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Name confirmed successfully!";
            }
        }
    }
}
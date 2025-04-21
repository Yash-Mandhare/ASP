using System;
using System.Web.UI;

namespace valitdationcontrol
{
    public partial class valitdationcontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Set UnobtrusiveValidationMode to None to avoid script errors
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Validation passes
            {
                lblMessage.Text = "Student Details Submitted Successfully!";
            }
        }
    }
}

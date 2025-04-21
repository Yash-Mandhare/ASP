using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lastsession
{
    public partial class SessionExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Show previously saved text if available
            if (Session["SavedText"] != null)
            {
                lblPreviousText.Text = "Stored Text from Last Session: " + Session["SavedText"].ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Save the text to session
            Session["SavedText"] = txtInput.Text;
            lblPreviousText.Text = "Text Saved: " + txtInput.Text;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clear the session
            Session.Clear();
            lblPreviousText.Text = "Session cleared.";
        }
    }
}
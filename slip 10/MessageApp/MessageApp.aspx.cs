using System;
using System.Drawing;   // <--- Add this line


namespace MessageApp
{
    public partial class MessageApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Empty for now
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string message = txtMessage.Text.Trim();

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(message))
            {
                lblResult.Text = "Please enter both Name and Message!";
                lblResult.ForeColor = Color.Red;
                lblResult.Font.Bold = true;
                return;
            }

            lblResult.Text = name + " says: " + message;

            // Reset style
            lblResult.Font.Bold = false;
            lblResult.Font.Italic = false;
            lblResult.Font.Underline = false;

            // Apply styles
            if (chkBold.Checked) lblResult.Font.Bold = true;
            if (chkItalic.Checked) lblResult.Font.Italic = true;
            if (chkUnderline.Checked) lblResult.Font.Underline = true;

            // Apply color
            if (rdoRed.Checked) lblResult.ForeColor = Color.Red;
            else if (rdoGreen.Checked) lblResult.ForeColor = Color.Green;
            else if (rdoBlue.Checked) lblResult.ForeColor = Color.Blue;
            else lblResult.ForeColor = Color.Black;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtMessage.Text = "";
            lblResult.Text = "";
            chkBold.Checked = false;
            chkItalic.Checked = false;
            chkUnderline.Checked = false;
            rdoRed.Checked = false;
            rdoGreen.Checked = false;
            rdoBlue.Checked = false;
        }
    }
}
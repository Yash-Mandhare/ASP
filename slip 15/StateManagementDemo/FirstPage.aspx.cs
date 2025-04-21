using System;

namespace StateManagementDemo
{
    public partial class FirstPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Only set query string link when not a postback
            
        }

        protected void btnStore_Click(object sender, EventArgs e)
        {
            // Store value in ViewState
            ViewState["UserName"] = txtName.Text;

            // Show message from ViewState
            lblViewState.Text = "Stored in ViewState: " + ViewState["UserName"];

            // Set query string link dynamically with the user name
            hlQueryString.NavigateUrl = "SecondPage.aspx?user=" + Server.UrlEncode(txtName.Text);
        }
    }
}

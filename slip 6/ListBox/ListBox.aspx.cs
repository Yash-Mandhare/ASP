using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListBox
{
    public partial class ListBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddSelected_Click(object sender, EventArgs e)
        {
            txtSelectedEmployees.Text = ""; // Clear old text

            foreach (System.Web.UI.WebControls.ListItem employee in lstEmployees.Items)
            {
                if (employee.Selected)
                {
                    txtSelectedEmployees.Text += employee.Text + Environment.NewLine;
                }
            }

            if (string.IsNullOrWhiteSpace(txtSelectedEmployees.Text))
            {
                txtSelectedEmployees.Text = "No employee selected.";
            }
        }

        protected void btnAddAll_Click(object sender, EventArgs e)
        {
            txtSelectedEmployees.Text = ""; // Clear old text

            foreach (System.Web.UI.WebControls.ListItem employee in lstEmployees.Items)
            {
                txtSelectedEmployees.Text += employee.Text + Environment.NewLine;
            }
        }
    }
}
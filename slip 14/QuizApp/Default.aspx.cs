using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;

            if (q1.SelectedItem != null && q1.SelectedItem.Text == "Delhi") score++;
            if (q2.SelectedItem != null && q2.SelectedItem.Text == "HyperText Markup Language") score++;
            if (q3.SelectedItem != null && q3.SelectedItem.Text == "Python") score++;

            lblResult.Text = "Your score is: " + score.ToString() + "/3";
        }
    }
}
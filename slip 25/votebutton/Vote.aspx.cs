using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace votebutton
{
    public partial class Vote : Page
    {
        // Static counters (not persistent across restarts — for demo only)
        static int goodVotes = 0;
        static int satisfactoryVotes = 0;
        static int badVotes = 0;

        protected void btnVote_Click(object sender, EventArgs e)
        {
            string vote = rblChoices.SelectedValue;

            // Tally vote
            if (vote == "Good") goodVotes++;
            else if (vote == "Satisfactory") satisfactoryVotes++;
            else if (vote == "Bad") badVotes++;

            // Calculate percentages
            int total = goodVotes + satisfactoryVotes + badVotes;
            if (total > 0)
            {
                double goodPercent = (goodVotes * 100.0) / total;
                double satisfactoryPercent = (satisfactoryVotes * 100.0) / total;
                double badPercent = (badVotes * 100.0) / total;

                // Display results
                lblGood.Text = $"Good: {goodPercent:F2}% ({goodVotes} votes)";
                lblSatisfactory.Text = $"Satisfactory: {satisfactoryPercent:F2}% ({satisfactoryVotes} votes)";
                lblBad.Text = $"Bad: {badPercent:F2}% ({badVotes} votes)";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace listview
{
    public partial class listview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate ListBox1 with some items on first load
                ListBox1.Items.Add(new ListItem("Apple"));
                ListBox1.Items.Add(new ListItem("Banana"));
                ListBox1.Items.Add(new ListItem("Mango"));
                ListBox1.Items.Add(new ListItem("Orange"));
                ListBox1.Items.Add(new ListItem("Pineapple"));
            }
        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            // Loop through the selected items and move to ListBox2
            for (int i = ListBox1.Items.Count - 1; i >= 0; i--)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox2.Items.Add(ListBox1.Items[i]);
                    ListBox1.Items.RemoveAt(i);
                }
            }
        }
    }
}
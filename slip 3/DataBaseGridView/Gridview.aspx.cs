using System;
using System.Data.SqlClient;
using System.Configuration;

namespace DataBaseGridView
{
    public partial class Gridview : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO [Table] (Name, Designation, JoiningDate, MobNo, Gender) " +
                               "VALUES (@Name, @Designation, @JoiningDate, @MobNo, @Gender)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text.Trim());

                DateTime joiningDate;
                if (DateTime.TryParse(txtJoiningDate.Text.Trim(), out joiningDate))
                {
                    cmd.Parameters.AddWithValue("@JoiningDate", joiningDate);
                }
                else
                {
                    // You can show an error message here for invalid date
                    return;
                }

                cmd.Parameters.AddWithValue("@MobNo", txtMobNo.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", txtGender.Text.Trim());

                con.Open();
                cmd.ExecuteNonQuery();
            }

            // Clear the fields after insertion
            txtName.Text = "";
            txtDesignation.Text = "";
            txtJoiningDate.Text = "";
            txtMobNo.Text = "";
            txtGender.Text = "";

            // Refresh GridView
            GridView1.DataBind();
        }
    }
}

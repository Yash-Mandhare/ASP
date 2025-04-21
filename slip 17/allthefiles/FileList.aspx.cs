using System;
using System.Data;
using System.IO;
using System.Web.UI;

namespace allthefiles
{
    public partial class FileList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFiles();
            }
        }

        private void LoadFiles()
        {
            string folderPath = Server.MapPath("~/Files"); // Change if your folder is different

            if (Directory.Exists(folderPath))
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("FileName");
                dt.Columns.Add("Size");
                dt.Columns.Add("CreatedDate");

                DirectoryInfo dir = new DirectoryInfo(folderPath);
                FileInfo[] files = dir.GetFiles();

                foreach (FileInfo file in files)
                {
                    DataRow row = dt.NewRow();
                    row["FileName"] = file.Name;
                    row["Size"] = (file.Length / 1024.0).ToString("F2");
                    row["CreatedDate"] = file.CreationTime.ToString("g");
                    dt.Rows.Add(row);
                }

                gvFiles.DataSource = dt;
                gvFiles.DataBind();
            }
        }
    }
}
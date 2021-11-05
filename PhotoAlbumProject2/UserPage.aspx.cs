using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;

namespace PhotoAlbumProject2
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            byte[] bytes = null;
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileextension = Path.GetExtension(postedFile.FileName);
            int filesize = postedFile.ContentLength;
            DateTime metadata = DateTime.Now; // will give the date for today
            string dateWithFormat = metadata.ToLongDateString();

            if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".bmp" || fileextension.ToLower() == ".ico" || fileextension.ToLower() == ".jpeg" || fileextension.ToLower() == "gif" || fileextension.ToLower() == ".tiff" || fileextension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryreader = new BinaryReader(stream);
                bytes = binaryreader.ReadBytes((int)stream.Length);
            }
            else
            {
                Debug.WriteLine("The file extension of your choice is not supported.");
            }

            string conString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Sibongile Mazibuko\Documents\photodata.mdf; Integrated Security = True; Connect Timeout = 30";

            using (SqlConnection con = new SqlConnection(conString))
                try
                {
                    con.Open();
                    string sql = "INSERT INTO [PhotoData] VALUES (@id, @filename, @fileextension, @filesize, @filecontent, @filemetadata)";
                    SqlCommand command = new SqlCommand(sql, con);
                    command.Parameters.AddWithValue("@id", txtid.Text.Trim());
                    command.Parameters.AddWithValue("@filename", filename);
                    command.Parameters.AddWithValue("@fileextension", fileextension);
                    command.Parameters.AddWithValue("@filesize", filesize);
                    command.Parameters.AddWithValue("@filecontent", bytes);
                    command.Parameters.AddWithValue("@FileMetadata", metadata);

                    //string sqll = "SELECT * FROM PhotoData";

                    
                    command.ExecuteNonQuery();
                }
                catch (Exception ex) {
                    Debug.WriteLine(ex.Message);
                }

            
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            string conString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Sibongile Mazibuko\Documents\photodata.mdf; Integrated Security = True; Connect Timeout = 30";
            using (SqlConnection con = new SqlConnection(conString))      
            try
            {
                string sql = "SELECT * FROM PhotoData WHERE Id='" + txtid.Text.Trim() + "'";
                SqlCommand command = new SqlCommand(sql, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;
                DataTable datatable = new DataTable();
                da.Fill(datatable);
                if (datatable != null && datatable.Rows.Count > 0)
                {
                    byte[] bytes = (byte[])datatable.Rows[0]["FileContent"];
                    string strng = Convert.ToBase64String(bytes);

                    Image1.ImageUrl = "data:Image/png;base64," + strng;
                }
            }
            catch(Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
            

        }
    }
}
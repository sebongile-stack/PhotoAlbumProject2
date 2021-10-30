using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

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

            if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".bmp" || fileextension.ToLower() == ".ico" || fileextension.ToLower() == ".jpeg" || fileextension.ToLower() == "gif" || fileextension.ToLower() == ".tiff" || fileextension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryreader = new BinaryReader(stream);
                bytes = binaryreader.ReadBytes((int)stream.Length);
            }
            else
            {
                Console.WriteLine("The file extension of your choice is not supported.");
            }

            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Sibongile Mazibuko\Documents\photodata.mdf; Integrated Security = True; Connect Timeout = 30");
            try
            {
                string sql = "INSERT INTO [PhotoData] (Id, FileName, FileExtesion, FileSize, FileContent, FileMetadata) VALUES (@Id, @FileName, @FileExtension, @FileSize, @FileContent, @FileMetadata)";
                SqlCommand command = new SqlCommand(sql, con);
                command.Parameters.AddWithValue("Id", txtid.Text.Trim());
                command.Parameters.AddWithValue("FileName", filename);
                command.Parameters.AddWithValue("FileExtension", fileextension);
                command.Parameters.AddWithValue("FileSize", filesize);
                command.Parameters.AddWithValue("FileContent", bytes);
                //command.Parameters.AddWithValue("FileMetadata", );

                string sqll = "SELECT * FROM PhotoData";

                con.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception ex) {
                Console.WriteLine(ex.Message);
            }

            
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Sibongile Mazibuko\Documents\photodata.mdf; Integrated Security = True; Connect Timeout = 30");
            try
            {
                string sql = "SELECT * FROM PhotoData";
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
                Console.WriteLine(ex.Message);
            }
            

        }
    }
}
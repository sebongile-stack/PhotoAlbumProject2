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
            HttpPostedFile postedfile = FileUpload1.PostedFile;
            string fileextension = Path.GetExtension(postedfile.FileName);
            txtDate.Text = DateTime.Now.ToString("dd-MM-yyyy"); // will give the date for today

            if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".bmp" || fileextension.ToLower() == ".ico" || fileextension.ToLower() == ".jpeg" || fileextension.ToLower() == ".gif" || fileextension.ToLower() == ".tiff" || fileextension.ToLower() == ".png")
            {
                Stream stream = postedfile.InputStream;
                BinaryReader binaryreader = new BinaryReader(stream);
                bytes = binaryreader.ReadBytes((int)stream.Length);
            }
            else
            {
                Label1.Text = "File extension not suppoerted";
            }
            
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(conString))
            {

                try 
                {
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
                    string image = "~/images/" + Path.GetFileName(FileUpload1.FileName);
                    con.Open();
                    string query = "INSERT INTO [PhotoInfo] (FileName, Description, Date, Image) VALUES ('"+ txtName.Text +"', '"+ txtDescription.Text +"', '"+txtDate.Text+ "', '" +image+ "')";

                    SqlCommand command = new SqlCommand(query, con);
                    
                    command.ExecuteNonQuery();
                    con.Close();

                    Label1.Text = "Data submitted to the database.";
                }
                catch(Exception ex)
                {
                    Label1.Text = ex.Message;

                }
            }
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(conString))      
            try
            {
                string sql = "SELECT * FROM [PhotoInfo]";
                SqlCommand command = new SqlCommand(sql, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;

                DataSet data = new DataSet();

                da.Fill(data);
                GridView1.DataSource = data;
                GridView1.DataBind();
                con.Close();

                
            }
            catch(Exception ex)
            {
                  Label1.Text = ex.Message;
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);

            try
            {
                con.Open();
                string query = "SELECT * FROM PhotoInfo";
                SqlCommand command = new SqlCommand(query, con);

                con.Close();

            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }


        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(conString))     
            try
            {
                    SqlDataAdapter da;
                    SqlCommand command;
                    da = new SqlDataAdapter();
                    con.Open();
                    string query = "DELETE FROM [PhotoInfo] WHERE FileName LIKE '"+ txtDelete.Text +"' ";
                    command = new SqlCommand(query, con);
                    da.DeleteCommand = new SqlCommand(query, con);
                    da.DeleteCommand.ExecuteNonQuery();

                    command.Dispose();
                    con.Close();
      
            }
            catch (SqlException ex) 
            {
                    Label1.Text = ex.Message;
            }
            
        }
        protected void DownloadFile(object sender, EventArgs e)
        {
            string FilePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename="+ Path.GetFileName(FilePath));
            Response.WriteFile(FilePath);
            Response.End();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security=True";
            

            SqlDataAdapter da;
            SqlCommand command;
            DataSet ds;

            try 
            {
                SqlConnection con = new SqlConnection(conString);
                da = new SqlDataAdapter();
                ds = new DataSet();
                con.Open();
                string query = "SELECT * FROM [PhotoInfo] WHERE FileName LIKE '%" +txtSearch.Text+ "%'"; 
                command = new SqlCommand(query, con);
                da.SelectCommand = command;
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();

            }
            catch (SqlException ex)
            {
                Label1.Text = ex.Message;
            }

        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PhotoAlbumProject2
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            string email;
            email = textEmail.Text;
        }

        protected void textPassword_TextChanged(object sender, EventArgs e)
        {
            
            string password;
            password = textPassword.Text;
        }

        protected void LinkCreateAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAccount.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try {
                con.Open();

                String sql = "SELECT COUNT(1) FROM [User] WHERE Email='"+textEmail.Text+"' AND Password='"+textPassword.Text+"'";
                SqlCommand command = new SqlCommand(sql, con);

                int count = Convert.ToInt32(command.ExecuteScalar());
                if (count == 1)
                {
                    Response.Redirect("UserPage.aspx");
                }
                else
                {
                    Label5.Text = "Incorrect user credentials. Please try again.";
                    Label5.ForeColor = System.Drawing.Color.Red;
                }

                con.Close();
            }

            catch(Exception error)
            {
                Label5.Text = error.Message;
            }
        }
    }
}
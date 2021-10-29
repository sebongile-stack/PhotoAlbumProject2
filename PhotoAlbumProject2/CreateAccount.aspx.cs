using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace PhotoAlbumProject2
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        string password;
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sibongile Mazibuko\Documents\photoDb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }

        protected void txtFName_TextChanged(object sender, EventArgs e)
        {
            String name;
            name = txtFName.Text;
        }

        protected void txtLName_TextChanged(object sender, EventArgs e)
        {
            String surname;
            surname = txtLName.Text;
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            String email;
            email = txtEmail.Text;
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            
            password = txtPassword.Text;
        }

        protected void txtConfirm_TextChanged(object sender, EventArgs e)
        {
            string confirmPassword;
            confirmPassword = txtConfirm.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                connection.Open();

                String sql = "INSERT INTO [User] (FirstName, LastName, Email, Password, ConfirmPassword) VALUES ('"+txtFName.Text+"', '"+txtLName.Text+"', '"+txtEmail.Text+"', '"+txtPassword.Text+"', '"+txtConfirm.Text+"')";
                SqlCommand commanand = new SqlCommand(sql, connection);

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.InsertCommand = commanand;
                adapter.InsertCommand.ExecuteNonQuery();

                connection.Close();
            }

            catch(Exception ex)
            {
                Label6.Text = ex.Message;
            }
        }
        public static string HashString(string password, string salt)
        {
            password = salt + password;
            HashAlgorithm myHasher = new SHA1CryptoServiceProvider();
            byte[] myHashInBytes = myHasher.ComputeHash(System.Text.Encoding.Default.GetBytes(password));
            return Convert.ToBase64String(myHashInBytes);
        }
    }
}
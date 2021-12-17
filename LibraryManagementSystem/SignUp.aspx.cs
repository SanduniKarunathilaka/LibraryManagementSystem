using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace LibraryManagementSystem
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUp_click(object sender, EventArgs e)
        {
            if (tbID.Text != null && tbPass != null && tbCPass != null && tbMail != null && tbName != null && tbUser != null)
            {
                if (tbPass.Text == tbCPass.Text)
                {
                    SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
                    con.Open();
                    //String CS = ConfigurationManager.ConnectionStrings["DatabaseNewConnectionString1"].ConnectionString;
                    {
                        var cmd = new SqlCommand("insert into Users values(@UId,@UserName,@Password,@Email,@Name,@UserType)", con);
                        cmd.Parameters.AddWithValue("@UId", tbID.Text);
                        cmd.Parameters.AddWithValue("@UserName", tbUser.Text);
                        cmd.Parameters.AddWithValue("@Password", tbPass.Text);
                        cmd.Parameters.AddWithValue("@Email", tbMail.Text);
                        cmd.Parameters.AddWithValue("@Name", tbName.Text);
                        cmd.Parameters.AddWithValue("@UserType", "U");


                        cmd.ExecuteNonQuery();
                        lblMsg.Text = "Registration Successful";
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        Response.Redirect("Login.aspx");
                    }

                }

                else
                {
                    lblMsg.Text = "Password is not matching";
                }
            }

            else
            {
                lblMsg.Text = "All fields are mandatory";
            }
        }
    }
}
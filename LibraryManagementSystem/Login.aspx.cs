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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_click(object sender, EventArgs e)
        {

            String CS = ConfigurationManager.ConnectionStrings["DatabaseLibraryConnectionString"].ConnectionString;

            {
                SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Users where UserName = '" + UserName.Text + "' and Password = '" + Password.Text + "'", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);



                if (dt.Rows.Count != 0)
                {

                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "U")
                    {
                        Response.Redirect("~/UserHome.aspx");
                        Session["USERNAME"] = UserName.Text;
                    }
                    if (Utype == "A")
                    {
                        Response.Redirect("~/AdminHome.aspx");
                        Session["USERNAME"] = UserName.Text;
                    }
                }

                else
                {
                    loginlbl1.Text = "Invalid username or password";
                    loginlbl1.ForeColor = System.Drawing.Color.Red;
                }

            }

        }

    }
}
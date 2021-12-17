using System;
using System.Data.SqlClient;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;



namespace LibraryManagementSystem
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
            con.Open();
            {
                SqlCommand cmd = new SqlCommand("Select BranchId,  BranchName from Branch", con);
                ddlBranch.DataSource = cmd.ExecuteReader();
                ddlBranch.DataBind();
                
            }
            con.Close();
            con.Open();
            {
                SqlCommand cmd = new SqlCommand("Select PublicationId, PublicationName from Publication", con);
                ddlPublication.DataSource = cmd.ExecuteReader();
                ddlPublication.DataBind();
            }

        }


        protected void btnAddBook_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
            con.Open();
            {
                SqlCommand cmd = new SqlCommand("procInsertBook",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BookName", txtbName.Text);
                cmd.Parameters.AddWithValue("@Description", txtbDescription.Text);
                cmd.Parameters.AddWithValue("@Author", txtbAuthor.Text);
                cmd.Parameters.AddWithValue("@BranchId", ddlBranch.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PublicationId", ddlPublication.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Price", txtbPrice.Text);
                cmd.Parameters.AddWithValue("@Quantity", txtbQuantity.Text);

                con.Close();
                con.Open();
                Int64 BookId = Convert.ToInt64(cmd.ExecuteScalar());

                //Insert and upload images
                if (FileUpload1.HasFile) {
                    string SavePath = Server.MapPath("~/Images/BookImages/") + BookId;
                    if (!Directory.Exists(SavePath)) {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(SavePath + "\\" + txtbName.Text.ToString().Trim() + "01");

                    SqlCommand cmd1 = new SqlCommand("insert into BookImage values ('" + BookId + "' ,'" + txtbName.Text.ToString().Trim() + "01" +"' ,'" + Extention + "')" ,con);

                    
                    cmd1.ExecuteNonQuery();
                }

                /*  var cmd = new SqlCommand("insert into Book values(@BookId,@BookName,@Description,@Author,@BranchId,@PublicationId,@Price,@Quantity)", con);
                  cmd.Parameters.AddWithValue("@BookName", txtbName.Text);
                  cmd.Parameters.AddWithValue("@Description", txtbDescription.Text);
                  cmd.Parameters.AddWithValue("@Author", txtbAuthor.Text);
                  cmd.Parameters.AddWithValue("@Email", tbMail.Text);
                  cmd.Parameters.AddWithValue("@Name", tbName.Text);
                */
            }
        }
        }
        }
    
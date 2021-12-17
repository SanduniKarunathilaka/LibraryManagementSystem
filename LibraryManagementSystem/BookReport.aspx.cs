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
    public partial class BookReport : System.Web.UI.Page
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

        protected void btnViewBranch_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select BookId,BookName,Price,Quantity from Book where BranchId = '"+ddlBranch.SelectedItem.Value+"' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void btnViewPublication_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select BookId,BookName,Price,Quantity from Book where PublicationId = '" + ddlPublication.SelectedItem.Value + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }

        }
    }
}
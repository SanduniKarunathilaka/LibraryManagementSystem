using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace LibraryManagementSystem
{
    public partial class AddPublication : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }
        }



        protected void gvbind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Publication", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridViewPublication.DataSource = ds;
                GridViewPublication.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridViewPublication.DataSource = ds;
                GridViewPublication.DataBind();
                int columncount = GridViewPublication.Rows[0].Cells.Count;
                GridViewPublication.Rows[0].Cells.Clear();
                GridViewPublication.Rows[0].Cells.Add(new TableCell());
                GridViewPublication.Rows[0].Cells[0].ColumnSpan = columncount;
                GridViewPublication.Rows[0].Cells[0].Text = "No Records Found";
            }

        }

        protected void GridViewPublication_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridViewPublication.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("PublicationId");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM Publication where PublicationId='" + Convert.ToInt32(GridViewPublication.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
        }

        protected void GridViewPublication_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewPublication.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void GridViewPublication_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int PublicationId = Convert.ToInt32(GridViewPublication.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridViewPublication.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID");
            TextBox PublicationName = (TextBox)row.Cells[1].Controls[0];

            GridViewPublication.EditIndex = -1;
            con.Open();
            SqlCommand cmd = new SqlCommand("update Publication set BranchName='" + PublicationName.Text + "' where PublicationId='" + lblID + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
            //GridView1.DataBind();
        }



        protected void GridViewPublication_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewPublication.PageIndex = e.NewPageIndex;
            gvbind();
        }

        protected void GridViewPublication_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewPublication.EditIndex = -1;
            gvbind();
        }


       
    


        protected void btnAdd_Onclick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
            con.Open();
            {
                var cmd = new SqlCommand("insert into Publication values(@PublicationName)", con);
                cmd.Parameters.AddWithValue("@PublicationName", txtPublicationName.Text);
                cmd.ExecuteNonQuery();
                txtPublicationName.Text = String.Empty;

            }
        }
    }
}
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


    public partial class AddBranch : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Select * from Branch", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridViewBranch.DataSource = ds;
                GridViewBranch.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridViewBranch.DataSource = ds;
                GridViewBranch.DataBind();
                int columncount = GridViewBranch.Rows[0].Cells.Count;
                GridViewBranch.Rows[0].Cells.Clear();
                GridViewBranch.Rows[0].Cells.Add(new TableCell());
                GridViewBranch.Rows[0].Cells[0].ColumnSpan = columncount;
                GridViewBranch.Rows[0].Cells[0].Text = "No Records Found";
            }

        }

        protected void GridViewBranch_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridViewBranch.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("BranchId");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM Branch where BranchId='" + Convert.ToInt32(GridViewBranch.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
        }

        protected void GridViewBranch_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewBranch.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void GridViewBranch_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int BranchId = Convert.ToInt32(GridViewBranch.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridViewBranch.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID");
            TextBox BranchName = (TextBox)row.Cells[1].Controls[0];

            GridViewBranch.EditIndex = -1;
            con.Open();
            SqlCommand cmd = new SqlCommand("update Branch set BranchName='" + BranchName.Text + "' where BranchId='" + lblID + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
            //GridView1.DataBind();
        }



        protected void GridViewBranch_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewBranch.PageIndex = e.NewPageIndex;
            gvbind();
        }

        protected void GridViewBranch_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewBranch.EditIndex = -1;
            gvbind();
        }


        protected void btnAdd_Onclick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local)\\sqlexpress;Initial Catalog=LibraryManagementdb;Integrated Security=True;");
            con.Open();
            {
                var cmd = new SqlCommand("insert into Branch values(@BranchName)", con);
                cmd.Parameters.AddWithValue("@BranchName", txtBranchName.Text);
                cmd.ExecuteNonQuery();
                txtBranchName.Text = String.Empty;

            }
        }
    }
}
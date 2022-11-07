using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Approveusers : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = bl.approveselectuser();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "There is no Requests";
                Label1.Visible = true;
                divGrid.Visible = false;
                GridView1.Visible = false;
                TextBox1.Visible = false;
                Label2.Visible = false;
                Button1.Visible = false;
            }
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.username = TextBox1.Text;
        bl.updateregisterstatus();
        Response.Write("<script>alert('approved successfully')</script>");
        DataTable dt = bl.approveselectuser();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        TextBox1.Text = "";
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminviewfeedback : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = bl.feedbackfetch();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "There is no Feedback";
                Label1.Visible = true;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                Button1.Visible = false;
                divGrid.Visible = false;
                GridView1.Visible = false;
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox7.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.name = TextBox1.Text;
        bl.email = TextBox4.Text;
        bl.mobileno = TextBox5.Text;
        bl.Id = TextBox6.Text;
        bl.message = TextBox2.Text;
        bl.date = TextBox3.Text;
        bl.username = TextBox7.Text;
        bl.replyfeedbackadmin();
        Response.Write("<script>alert('send successfully')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Response.Redirect("adminviewfeedback.aspx");
    }
}
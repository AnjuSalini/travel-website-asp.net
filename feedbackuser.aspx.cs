using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class feedbackuser : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.name = TextBox1.Text;
        bl.email = TextBox2.Text;
        bl.mobileno = TextBox3.Text;
        bl.message = TextBox4.Text;
        bl.username = Session["uname"].ToString();
        bl.feedbackinsert();
        Response.Write("<script>alert('Feedback send successfully')<script>");
        Response.Redirect("feedbackuser.aspx");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}
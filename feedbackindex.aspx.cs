using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class feedbackindex : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.name = TextBox1.Text;
        bl.email = TextBox2.Text;
        bl.mobileno = TextBox3.Text;
        bl.message = TextBox4.Text;
        bl.feedbackinsert();
        Response.Write("<script>alert('Feedback send successfully')<script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Response.Redirect("feedbackindex.aspx");
    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{

    //    Session.Abandon();
    //    Session.Clear();
    //    Response.Redirect("Login.aspx");
    //}
}
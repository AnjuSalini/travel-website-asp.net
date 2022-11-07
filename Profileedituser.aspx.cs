using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profileedituser : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.username = Session["uname"].ToString();

        bl.name = TextBox1.Text;
        bl.updatename();
        TextBox1.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        bl.username = Session["uname"].ToString();
        bl.age = TextBox2.Text;
        bl.updateage();
        TextBox2.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        bl.username = Session["uname"].ToString();
        bl.address = TextBox3.Text;
        bl.updateaddress();
        TextBox3.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        bl.username = Session["uname"].ToString();
        bl.email = TextBox4.Text;
        bl.updateemail();
        TextBox4.Text = "";

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        bl.username = Session["uname"].ToString();
        bl.mobileno = TextBox5.Text;
        bl.updatemobileno();
        TextBox5.Text = "";
    }
}
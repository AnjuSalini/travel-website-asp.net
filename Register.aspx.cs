using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        bl.name = TextBox1.Text;
        bl.age = TextBox2.Text;
        bl.address = TextBox3.Text;
        bl.email = TextBox4.Text;
        bl.mobileno = TextBox5.Text;
        bl.username = TextBox6.Text;
        bl.password = TextBox7.Text;
        bl.creditcardno = TextBox9.Text;
        bl.insertregister();
        Response.Write("<script>alert('Registered Successfully')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox8.Text = "";
    }
}
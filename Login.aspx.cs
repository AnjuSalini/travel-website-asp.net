using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.username = TextBox1.Text;
        bl.password = TextBox2.Text;
        DataTable dt2 = bl.adminlog();
        DataTable dt = bl.loginfetch();
        if (dt.Rows.Count > 0)
        {
            Session["uname"] = dt.Rows[0][7].ToString();
            Response.Redirect("Userhome.aspx");
        }
       
        else if (dt2.Rows.Count > 0)
        {
            Session["uname"] = dt2.Rows[0][1].ToString();
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Incorrect Username or Password')</script>");
        }
    }
}
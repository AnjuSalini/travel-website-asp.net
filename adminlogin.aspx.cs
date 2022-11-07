using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminlogin : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.username = TextBox1.Text;
        bl.password = TextBox2.Text;
        DataTable dt = bl.adminlog();
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("adminhome.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Userhome : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
           
           Response.Write("Welcome"+ Session["uname"].ToString());
           bl.username = Session["uname"].ToString();
            DataList1.DataSource=bl.profilefetch();
            DataList1.DataBind();
            bl.username = Session["uname"].ToString();
            DataTable dt = bl.messageviewuser();
            Label2.Text = dt.Rows.Count.ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profileedituser.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Messagepage.aspx");
    }
}
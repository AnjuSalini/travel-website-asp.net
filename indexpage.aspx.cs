using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class indexpage : System.Web.UI.Page
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
        //bl.from = TextBox1.Text;
        //bl.to = TextBox2.Text;
        //bl.dateofdeparture = TextBox3.Text;
        //bl.dateofarrival = TextBox4.Text;
        //DataTable dt = bl.searchflight();
        //if (dt.Rows.Count > 0)
        //{
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    GridView1.Visible = true;
        //}
        //else
        //    GridView1.Visible=false;
       

    }
}
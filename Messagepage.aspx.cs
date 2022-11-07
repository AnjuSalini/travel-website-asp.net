using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Messagepage : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bl.username = Session["uname"].ToString();
            DataTable dt = bl.messageviewuser();
            DataList1.DataSource = dt;
            DataList1.DataBind();
            
        }
    }
}
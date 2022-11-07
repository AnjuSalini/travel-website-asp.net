using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recipthotel : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bl.name = Session["uname"].ToString();
            bl.date = Session["datenw"].ToString();
            DataList1.DataSource = bl.bookinghotelreceipt();
            DataList1.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
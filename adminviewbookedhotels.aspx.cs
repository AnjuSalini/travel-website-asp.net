using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminviewbookedhotels : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = bl.reservedhotelfetch();

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Visible = true;
                Label1.Visible = false;
                divGrid.Visible = true;
            }


            else
            {
                //Label1.Text = "There is no Booked Hotels";
                Label1.Visible = true;
                divGrid.Visible = false;
                GridView1.Visible = false;
            }
        }
    }
}
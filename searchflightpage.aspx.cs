using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class searchflightpage : System.Web.UI.Page
{ bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         bl.from = TextBox1.Text;
        bl.to = TextBox2.Text;
        bl.dateofdeparture = TextBox3.Text;
       
        DataTable dt = bl.searchflight();
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
            DataList1.Visible = true;
        }
        else
            DataList1.Visible = false;
       

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("add"))
        {
            bl.id = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("Bookingpage.aspx?id=" + bl.id + "");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Searchpackageindex : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataTable dt = bl.packagelocationfetch();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "hotelloaction";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.location = DropDownList1.SelectedItem.Text;
        bl.budget = TextBox2.Text;
        bl.todaydate = DateTime.Now.ToShortDateString();
        DataTable dt = bl.searchpackage();
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;

            DataList1.DataBind();
            DataList1.Visible = true;
        }

        else
        {
            DataList1.Visible = false;


        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("add"))
        {
            //bl.id = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex].ToString());
            //Response.Redirect("Bookingpackage.aspx?id=" + bl.id + "");
            Response.Redirect("Register.aspx");
        }

    }
}
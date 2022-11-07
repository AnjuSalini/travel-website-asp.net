using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminaddpackage : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            DropDownList1.Items.Insert(0, "--select--");
            for (int j = 2017; j <= 2080; j++)
            {
                DropDownList3.Items.Add(j.ToString());
            }
            DropDownList3.Items.Insert(0, "--select--");


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.packagename = TextBox1.Text;
        bl.flightname = TextBox2.Text;
        bl.from = TextBox3.Text;
        bl.to = TextBox4.Text;
        bl.hotelname = TextBox5.Text;
        bl.location = TextBox6.Text;
      bl.dateofdeparture = DropDownList1.SelectedItem.Text + "/" + DropDownList2.SelectedItem.Text + "/" + DropDownList3.SelectedItem.Text;
        bl.noofdays = TextBox7.Text;
        bl.availablerooms = TextBox9.Text;
        bl.price = TextBox10.Text;
        bl.maximumpeople = TextBox8.Text;
        bl.validity = TextBox11.Text;
        bl.packageadmininsert();
        Response.Write("<script>alert('added successfully')</script>");

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
}
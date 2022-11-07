using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Bookinghotel : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt1 = bl.banknamefetch();
            DropDownList4.DataSource = dt1;
            DropDownList4.DataTextField = "bankname";
            DropDownList4.DataBind();
            TextBox1.Text = Session["uname"].ToString();
            bl.Id = Request.QueryString["id"].ToString();
            DataTable dt = bl.bookhotel();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox5.Text = dt.Rows[0][2].ToString();

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
        bl.noofdays = TextBox8.Text;
        bl.name = TextBox1.Text;
        bl.flightname = TextBox2.Text;
        bl.adult = TextBox3.Text;
        bl.children = TextBox4.Text;
        bl.fare = TextBox5.Text;
        bl.date = DropDownList1.SelectedItem.Text + "/" + DropDownList2.SelectedItem.Text + "/" + DropDownList3.SelectedItem.Text;
        bl.bank = DropDownList4.SelectedItem.Text;
        bl.creditcardno = TextBox7.Text;
        Session["datenw"] = DropDownList1.SelectedItem.Text + "/" + DropDownList2.SelectedItem.Text + "/" + DropDownList3.SelectedItem.Text;
        bl.noofrooms = Convert.ToInt32(TextBox6.Text);
        bl.totalperson = int.Parse(Label2.Text);
        bl.totalfare = int.Parse(Label1.Text);
         DataTable dt5 = bl.accountbalancecheck();
        int balance = Convert.ToInt32(dt5.Rows[0][3].ToString());
        if (balance <= bl.totalfare)
        {
            Label3.Visible = true;

        }
        else
        {
            bl.reservationinserthotel();
            Response.Write("<script>alert('booked successfully')</script>");
            LinkButton6.Visible = true;
        }
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        int a3 = int.Parse(TextBox8.Text);
        int a1 = int.Parse(TextBox5.Text);
        int a2 = int.Parse(TextBox6.Text);
        int i = a1 * a2 * a3;
        Label1.Text = i.ToString();
        Label1.Visible = true;
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        int b1 = int.Parse(TextBox3.Text);
        int b2 = int.Parse(TextBox4.Text);
        int j = b1 + b2;
        Label2.Text = j.ToString();
    }
}
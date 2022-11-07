using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Bookingpage : System.Web.UI.Page
{bussinesslayer bl=new bussinesslayer();
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
            DataTable dt = bl.bookflight();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox5.Text = dt.Rows[0][11].ToString();
         
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        double a1=double.Parse(TextBox3.Text);
          double a2=double.Parse(TextBox4.Text);
        double i=a1+a2;
        Label1.Text = i.ToString();
        double b1 = double.Parse(TextBox5.Text);
        double j=b1*i;
        Label2.Text = j.ToString();
        Label1.Visible = true;
        Label2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
       
        bl.name = TextBox1.Text;
        bl.flightname = TextBox2.Text;
        bl.adult = TextBox3.Text;
        bl.children = TextBox4.Text;
        bl.fare = TextBox5.Text;
       
        bl.date = DropDownList1.SelectedItem.Text + "/" + DropDownList2.SelectedItem.Text + "/" + DropDownList3.SelectedItem.Text;
        bl.bank = DropDownList4.SelectedItem.Text;
        bl.creditcardno = TextBox6.Text;
        Session["datenw"] = DropDownList1.SelectedItem.Text + "/" + DropDownList2.SelectedItem.Text + "/" + DropDownList3.SelectedItem.Text;
        bl.totalseats = int.Parse(Label1.Text);
        bl.totalperson = int.Parse(Label1.Text);
        bl.totalfare = int.Parse(Label2.Text);

        DataTable dt5 = bl.accountbalancecheck();
        int balance = Convert.ToInt32(dt5.Rows[0][3].ToString());
        if (balance <= bl.totalfare)
        {
            Label3.Visible = true;

        }
        else
        {
            bl.reservationinsert();
            Response.Write("<script>alert('booked successfully')</script>");
            LinkButton6.Visible = true;
        }
       
        }
}


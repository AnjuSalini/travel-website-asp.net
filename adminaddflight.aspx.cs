using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminaddflight : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.flightname = TextBox1.Text;
        bl.from = TextBox2.Text;
        bl.to = TextBox3.Text;
        bl.dateofdeparture=TextBox4.Text;
        bl.dateofarrival = TextBox5.Text;
        bl.departuretime=TextBox6.Text;
        bl.arrivaltime = TextBox7.Text;
        bl.totalseats = Convert.ToInt32(TextBox8.Text);
        bl.bookedseats = TextBox9.Text;
        bl.availableseats = TextBox10.Text;
        bl.fare = TextBox11.Text;
        bl.flightadmininsert();
        Response.Write("<script>alert('added successfully')</script>");
        TextBox11.Text = "";
        TextBox10.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        //Response.Redirect("adminaddflight.aspx");
    }
}
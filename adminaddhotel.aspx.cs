using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminaddhotel : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bl.hotelname = TextBox1.Text;
        bl.rentperday = TextBox2.Text;
        bl.location = TextBox3.Text;
        bl.facilities = TextBox4.Text;
        bl.totalrooms = TextBox5.Text;
        bl.image = "~/images/"+FileUpload1.FileName;
       FileUpload1.SaveAs( Server.MapPath("~/images/"+FileUpload1.FileName));
        bl.bookedrooms = TextBox6.Text;
        bl.availablerooms = TextBox7.Text;
        bl.hoteladmininsert();
        Response.Write("<script>alert('added successfully')</script>");
        
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
       

    }
}
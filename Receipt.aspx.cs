using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;
using System.Web.SessionState;
 
public partial class Receipt : System.Web.UI.Page
{
    bussinesslayer bl = new bussinesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           bl.name= Session["uname"].ToString();
           bl.date = Session["datenw"].ToString();
         DataList1.DataSource=  bl.bookingflightreceipt();
         DataList1.DataBind();
           
        }

       
    }




    //protected void Button1_Click(object sender, EventArgs e)
    //{
      
    //}
}


   

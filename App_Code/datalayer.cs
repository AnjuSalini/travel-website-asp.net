using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for datalayer
/// </summary>
public class datalayer
{
    SqlConnection con = new SqlConnection();
	public datalayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void getcon()
    {
        con.ConnectionString = "Data Source=USER-PC\\SQLEXPRESS;Initial Catalog=tripmanagementdb;User ID=sa;Password=admin123*";
        con.Open();
    }
    public void xnon(string str)
    {
        getcon();
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable xdata(string str)
    {
        getcon();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        con.Close();
        return dt;
    }
    public object xscalar(string str)
    {
        getcon();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand(str, con);
        object x = cmd.ExecuteScalar();
        con.Close();
        return x;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for bussinesslayer
/// </summary>
public class bussinesslayer
{
    datalayer dl = new datalayer();
    public string validity { get; set; }
    public int id { get; set; }
    public string Id { get; set; }
    public int totalseats { get; set; }
    public string flightname { get; set; }
    public string from { get; set; }
    public string to { get; set; }
    public string dateofdeparture { get; set; }
    public string dateofarrival { get; set; }
    public string departuretime{ get; set; }
    public string arrivaltime { get; set; }
    public string name { get; set; }
    public string age { get; set; }
    public string address { get; set; }
    public string email { get; set; }
    public string username { get; set; }
    public string password { get; set; }
    public string mobileno { get; set; }
    public string message { get; set; }
    public string checkindate { get; set; }
    public string location { get; set; }
    public string budget { get; set; }
    public string adult { get; set; }
    public string children { get; set; }
    public int totalperson { get; set; }
    public string fare { get; set; }
    public string fare1 { get; set; }
    public int fare2 { get; set; }
    public int totalfare { get; set; }
    public string date { get; set; }
    public string bank { get; set; }
    public int noofrooms { get; set; }
    public string creditcardno { get; set; }
    public string bookedseats { get; set; }
    public string availableseats { get; set; }
    public string hotelname { get; set; }
    public string packagename { get; set; }

    public string noofdays { get; set; }

    public string price { get; set; }
    public string rentperday { get; set; }

    public string facilities { get; set; }

    public string totalrooms { get; set; }
    public string todaydate { get; set; }
    public string image { get; set; }

    public string bookedrooms { get; set; }
    public string maximumpeople { get; set; }
    public string availablerooms { get; set; }
	public bussinesslayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable searchflight()
    {
        DataTable dt = dl.xdata("select * from flighttable where frm='" + from + "' and toplace='" + to + "' and dateofdeparture='" + dateofdeparture + "'");
       return dt;
    }
    public void insertregister()
    {
        dl.xnon("insert into registertable values('" + name + "','" + age + "','" + address + "','" + email + "','" + mobileno + "','" + creditcardno + "','" + username + "','" + password + "','pending')");
        dl.xnon("insert into bankaccounttable values('" + username + "','IOB','" + creditcardno + "',500000 )");
    }
    public DataTable loginfetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from registertable where username='"+username+"' and password='"+password+"' and status='approved'");
        return dt;
    }
    public DataTable profilefetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from registertable where username='" + username + "'");
        return dt;
    }
    public void updatename()
    {
        dl.xnon("update registertable set name='"+name+"' where username='"+username+"'");
    }
    public void updateage()
    {
        dl.xnon("update registertable set age='" + age + "'  where username='" + username + "'");
    }
    public void updateaddress()
    {
        dl.xnon("update registertable set address='" + address + "' where username='" + username + "'");
    }
    public void updateemail()
    {
        dl.xnon("update registertable set email='" + email + "' where username='" + username + "'");
    }
    public void updatemobileno()
    {
        dl.xnon("update registertable set mobileno='" + mobileno + "' where username='" + username + "'");
    }
    public void feedbackinsert()
    {
        dl.xnon("insert into feedbacktable values('" + name + "','" + email + "','" + mobileno + "','" + message + "','pending','" + username + "')");
    }
    public DataTable locationfetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from hoteltable");
        return dt;
    }
    public DataTable packagelocationfetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from packagetable");
        return dt;
    }
    public DataTable banknamefetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from bankaccounttable");
        return dt;
    }
    public DataTable searchhotel()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from hoteltable where location='" + location + "'and rentperday<='" + budget + "'");
        return dt;
    }
    public DataTable searchpackage()
    {
        DataTable dt = new DataTable();
            dt=dl.xdata("select * from packagetable where location='"+location+"' and price<='"+budget+"' and dateofdeparture>='"+todaydate+"'");
        return dt;
    }
    public DataTable bookflight()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from flighttable where fid="+Id+"");
        return dt;
    }
    public DataTable bookhotel()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from hoteltable where hid=" + Id + "");
        return dt;
    }
    public DataTable bookpackage()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from packagetable where pid='" + id + "'");
        return dt;
    }
    public void reservationinsert()
    {
        dl.xnon("insert into reservationtable values('" + name + "','" + flightname + "','" + adult + "','" + children + "','" + fare + "','"+totalseats+"','" + date + "','" + bank + "','" + creditcardno + "','" + totalperson + "','"+ totalfare +"','flight','NA')");
        dl.xnon("update bankaccounttable set deposit = deposit-'"+totalfare+"' where name='"+name+"'and creditcardno='"+creditcardno+"'");
        dl.xnon("update flighttable set availableseats=availableseats-'" + totalperson + "' where flightname='" + flightname + "'");
        dl.xnon("update flighttable set bookedseats=bookedseats + '" + totalperson + "' where flightname='" + flightname + "'");
    }
    public void reservationinserthotel()
    {
        dl.xnon("insert into reservationtable values('" + name + "','" + flightname + "','" + adult + "','" + children + "','" + fare + "','"+noofrooms+"','" + date + "','" + bank + "','" + creditcardno + "','" + totalperson + "','" + totalfare + "','hotel','"+noofdays+"')");
        dl.xnon("update bankaccounttable set deposit = deposit-'" + totalfare + "' where name='" + name + "'and creditcardno='" + creditcardno + "'");
        dl.xnon("update hoteltable set availablerooms=availablerooms-'" + noofrooms + "' where hotelname='" + flightname + "'");
        dl.xnon("update hoteltable set bookedrooms=bookedrooms+'" + noofrooms + "' where hotelname='" + flightname + "'");
    }
    public void reservationinsertpackage()
    {
        dl.xnon("insert into reservationtable values('" + name + "','" + flightname + "','" + adult + "','" + children + "','" + fare2 + "','" + noofrooms + "','" + date + "','" + bank + "','" + creditcardno + "','" + totalperson + "','" + fare2 + "','package','NA')");
        dl.xnon("update bankaccounttable set deposit = deposit-'" + fare2 + "' where name='" + name + "'and creditcardno='" + creditcardno + "'");
        
    }
    public DataTable adminlog()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from adminlogintable where username='"+username+"' and password='"+password+"'");
        return dt;
    }
    public void flightadmininsert()
    {
        dl.xnon("insert into flighttable values('" + flightname + "','" + from + "','" + to + "','" + dateofdeparture + "','" + dateofarrival + "','" + departuretime + "','" + arrivaltime + "','" + totalseats + "','" + bookedseats + "','" + availableseats + "','" + fare + "')");
    }
    public void hoteladmininsert()
    {
        dl.xnon("insert into hoteltable values('" + hotelname + "','" + rentperday + "','" + location + "','" + facilities + "','" + totalrooms + "','" + image + "','" + bookedrooms + "','" + availablerooms + "')");
    }
    public void packageadmininsert()
    {
        dl.xnon("insert into packagetable values('" + packagename + "','" + flightname + "','" + from + "','" + to + "','" + hotelname + "','" + location + "','" + dateofdeparture + "','" + noofdays + "','"+maximumpeople+"','" + availablerooms + "','"+price+"','"+validity+"')");
    }

    public DataTable approveselectuser()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from registertable where status='pending'");
        return dt;
    }

    public void updateregisterstatus()
    {
        dl.xnon("update registertable set status='approved' where name='"+username+"'");
    }
    public DataTable reservedflightfetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from reservationtable where category= 'flight'");
        return dt;
    }
    public DataTable reservedhotelfetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from reservationtable where category= 'hotel'");
        return dt;
    }
    public DataTable reservedpackagefetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from reservationtable where category= 'package'");
        return dt;
    }
    public DataTable feedbackfetch()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from feedbacktable where status='pending'");
        return dt;
    }
    public DataTable accountbalancecheck()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from bankaccounttable where creditcardno='"+creditcardno+"'");
        return dt;

    }
    public DataTable bookingflightreceipt()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from reservationtable where category='flight' and name='"+name+"' and date='"+date+"' ");
        return dt;

    }
    public DataTable bookingpackagereceipt()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from reservationtable where category='package' and name='" + name + "' and date='" + date + "' ");
        return dt;

    }
    public DataTable bookinghotelreceipt()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from reservationtable where category='hotel' and name='" + name + "' and date='" + date + "' ");
        return dt;

    }
    public void replyfeedbackadmin()
    {
       
        dl.xnon("insert into replytable values ('"+ Id + "','" + name + "','"+email+"','"+mobileno+"','"+message+"','"+date+"','"+username+"') ");
        dl.xnon("update feedbacktable set status='approved' where username='"+username+"'");
        

    }
    public DataTable messageviewuser()
    {
        DataTable dt = new DataTable();
        dt = dl.xdata("select * from replytable where username='"+username+"'");
        return dt;
    }
}
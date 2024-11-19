using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;
using System.Text;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI;

/// <summary>
/// Summary description for login_chk
/// </summary>
public class login_chk
{
	public bool admin_login_chk(string user_id,string pass_id)
	{
		//
		// TODO: Add constructor logic here
		//
        return true;
	}

    public bool check_name(string name)
    {
       
        //string name = "&dee p*";
        System.Text.Encoding ascii = System.Text.Encoding.ASCII;
        Byte[] encodedBytes =ascii.GetBytes(name);
        int name_length = name.Length;
        int count = 0;
        foreach(Byte b in encodedBytes)
        {

            if (((b >= 65) && (b <= 122)) || (b==32))
                {
                    count++;
                }
            
        }
        bool done = false;
        if (count == name_length)
        {

            done = true;
        }
        return done;
    }
    public bool check_eventname(string name)
    {

        //string name = "&dee p*";
        System.Text.Encoding ascii = System.Text.Encoding.ASCII;
        Byte[] encodedBytes = ascii.GetBytes(name);
        int name_length = name.Length;
        int count = 0;
        foreach (Byte b in encodedBytes)
        {

            if (((b >= 47) && (b <= 122)) || (b == 32))
            {
                count++;
            }

        }
        bool done = false;
        if (count == name_length)
        {

            done = true;
        }
        return done;
    }
    public bool check_date(string name)
    {

        //string name = "&dee p*";
        System.Text.Encoding ascii = System.Text.Encoding.ASCII;
        Byte[] encodedBytes = ascii.GetBytes(name);
        int name_length = name.Length;
        int count = 0;
        foreach (Byte b in encodedBytes)
        {

            if (((b >= 47) && (b <= 57)))// || (b == 32))
            {
                count++;
            }

        }
        bool done = false;
        if (count == 10)
        {

            done = true;
        }
        return done;
    }
    public bool check_mobile(string name)
    {
        bool done = false;
        //string name = "&dee p*";
        System.Text.Encoding ascii = System.Text.Encoding.ASCII;
        Byte[] encodedBytes = ascii.GetBytes(name);
        int name_length = name.Length;
        int count = 0;
        if (name_length == 10)
        {
            foreach (Byte b in encodedBytes)
            {

                if (((b >= 48) && (b <= 57)))// || (b == 32))
                {
                    count++;
                }

            }
            
            if (count == name_length)
            {

                done = true;
            }
        }
        return done;
    }
    
    public bool check_email(string name)
    {

        //string name = "&dee p*";
        System.Text.Encoding ascii = System.Text.Encoding.ASCII;
        Byte[] encodedBytes = ascii.GetBytes(name);
        int name_length = name.Length;
        int count = 0, counter = 1; ;

        foreach (Byte b in encodedBytes)
        {

            if (((b >= 65) && (b <= 122)) && counter == 1)// || (b == 32))
            {
                count++;
                counter++;
            }
            if (b == 64 && counter == 2)//((b >= 65) && (b <= 122)) && counter==1)// || (b == 32))
            {
                count++;
                counter++;
            }
            if (b == 46 && counter == 3)//((b >= 65) && (b <= 122)) && counter==1)// || (b == 32))
            {
                count++;
                counter++;
            }
        }
        bool done = false;
        if (count == 3)
        {

            done = true;
        }
        return done;
    }

    public int candidate_login_chk(string user_id, string pass_id, string type)
    {
        string sql = "select candidate_id from candidate_detail where cmobile1='" + user_id + "' and ct_other3='" + pass_id + "';";
        login_chk ck = new login_chk();
        SqlDataReader rddr = ck.connection_select(sql);

        int organiser_id = 0;
        //bool done;
        // string date_int = ck.date_ints(dt);

        if (rddr.HasRows)
        {
            rddr.Read();
            organiser_id = int.Parse(rddr.GetInt32(0).ToString());//.ToString();
        }

        return organiser_id;
    }
    public int organiser_login_chk(string user_id, string pass_id, string type)
    {
        string sql = "select organiser_id from organiser_detail where omobile1='" + user_id + "' and o_paid_status='" + pass_id + "';";
       login_chk ck = new login_chk();
       SqlDataReader rddr = ck.connection_select(sql);

       int organiser_id = 0;
        //bool done;
        // string date_int = ck.date_ints(dt);

        if (rddr.HasRows)
        {
            rddr.Read();
            organiser_id = int.Parse(rddr.GetInt32(0).ToString());//.ToString();
        }

        return organiser_id;
    }
    public string user_login_chk(string user_id, string user_pwd)
    {
        string user_type = "Invalid";

        // chk for candidate
        string sql = "select candidate_id from candidate_detail where cmobile1='"+user_id+"' and ct_other3='"+user_pwd+"';";
         login_chk ck = new login_chk();
        SqlDataReader rddr = ck.connection_select(sql);

        
        bool done;
       // string date_int = ck.date_ints(dt);

        if (rddr.HasRows)
        {
            user_type = "Candidate";
        }
        // chk for organiser
        sql = "select organiser_id from organiser_detail where omobile1='" + user_id + "' and o_paid_status='" + user_pwd + "';";
         //ck = new login_chk();
         rddr = ck.connection_select(sql);


        //bool done;
        // string date_int = ck.date_ints(dt);

        if (rddr.HasRows)
        {
            user_type = "Organiser";
        }

       
        
        return user_type;
    
    }
    public string date_ints(string str)
    {
        string dates = str.Substring(6,4)+str.Substring(3,2)+str.Substring(0,2);
        return dates;

    }

    public bool sms_message(string strQuery, string st_rollno)
    {
        string dt = DateTime.Now.ToString("dd/MM/yyyy");
        string sql = "SELECT st_message FROM st_final_attendence WHERE (dob = '" + dt + "') AND (st_rollno = '" + st_rollno + "')";
        login_chk ck = new login_chk();
        SqlDataReader rddr = ck.connection_select(sql);

        
        bool done;
        string date_int = ck.date_ints(dt);

        if (rddr.HasRows)
        {
            rddr.Read();
           string old_message = rddr.GetString(0);
        
           // old_message = rdr.GetString(0);
            sql = "UPDATE st_final_attendence SET st_message = '" + old_message +"New_Message:"+ strQuery + "' WHERE (dob = '" + dt + "') AND (st_rollno = '" + st_rollno + "');";

             done = connection_insert(sql);
        }
        else
        {
           // sql = "UPDATE st_final_attendence SET st_message = '" + old_message + strQuery + "' WHERE (st_date = '" + dt + "') AND (st_rollno = '" + st_rollno + "');";
            sql = "insert into st_final_attendence values('" + st_rollno + "','" + dt + "',0,'" + strQuery + "','','" + dt + "','" + date_int + "')";

             done = connection_insert(sql);
        
        
        }
        return done;
    }
    public SqlDataReader connection_select(string strQuery)
    {
        String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(strConnString);

    //cmd.CommandText = ;
    con.Open();

    cmd.Connection = con;
    cmd.CommandText = strQuery;

    SqlDataReader rdr = cmd.ExecuteReader();

    return rdr;
    }
    public bool connection_insert(string strQuery)
    {
        String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        cmd.ExecuteNonQuery();

        return true;
    }

    public bool admin_login_chk(string user_id, string pass_id, string column)
    {

        string strQuery = "SELECT power FROM login_table WHERE (user_id = '" + user_id + "') AND (passwrd = '" + pass_id + "')";//'class_id = '" + class_id + "')";
        SqlDataReader rdr= connection_select(strQuery);

        if (rdr.HasRows)
        {
            rdr.Read();


            Int32 power = rdr.GetInt32(0);
            if (power == 3)
            {
                return true;
            }
            else if ((power == 2))
            {
                rdr.Close();
                strQuery = "SELECT " + column + " FROM staff_power WHERE (staff_rollno = '" + user_id + "')";//'class_id = '" + class_id + "')";
                rdr = connection_select(strQuery);

                if (rdr.HasRows)
                {
                    rdr.Read();

                    string done = rdr.GetString(0);

                    if (done.Equals("True") || user_id.Equals(done))
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {


                    return false;//
                }
            }
            else
            {
                return false;// Response.Redirect("slogin.aspx");
            }
        }
        else
        {
            return false;
        }
        
    }
    public bool parent_login_chk(string user_id, string pass_id)
    {

        string strQuery = "SELECT power FROM login_table WHERE (user_id = '" + user_id + "') AND (passwrd = '" + pass_id + "')";//'class_id = '" + class_id + "')";
        SqlDataReader rdr = connection_select(strQuery);

        if (rdr.HasRows)
        {
            rdr.Read();


            Int32 power = rdr.GetInt32(0);

            if (power == 1)
            {
                return true; //
            }
            else
            {
                return false;// Response.Redirect("slogin.aspx");
            }
        }
        else
        {
            return false;
        }

    }
    public int find_total_days(string st_rollno, int book_id)
    {
           string sql = "select issue_date from st_library_issue_submit where st_rollno='"+st_rollno+"' and book_id="+book_id+";";
       //login_chk ck=new login_chk();
       SqlDataReader rdr = connection_select(sql);
       //int book_transaction;
       if (rdr.HasRows)
       {
           rdr.Read();
           DateTime issue_date =DateTime.Parse(rdr.GetValue(0).ToString());

           DateTime submit_date =DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd"));

           TimeSpan interval = issue_date - submit_date;
           return interval.Days;
       }
        return 0;
    }
    public string sendMessage(string phoneNo, string message)
    {
        message = System.Uri.UnescapeDataString(message);
        
        string url = "http://login.bulksmsgateway.in/unicodesmsapi.php";
        string result = "";
        // message = HttpUtility.UrlPathEncode(message);
        // username=........&password=.......&mobilenumber=........&message=.......&senderid=.......&type=3
        //String strPost = "?user=" + HttpUtility.UrlPathEncode("deepaktest") + "&password=" + HttpUtility.UrlPathEncode("9907385555") + "&sender=" + HttpUtility.UrlPathEncode("DengSo") + "&mobile=" + HttpUtility.UrlPathEncode(phoneNo) + "&type=" + HttpUtility.UrlPathEncode("3") + "&message=" + message;
        String strPost = "?username=" + HttpUtility.UrlPathEncode("deepaktest") + "&password=" + HttpUtility.UrlPathEncode("9907385555") + "&mobilenumber=" + HttpUtility.UrlPathEncode(phoneNo) + "&message=" + message + "&senderid=" + HttpUtility.UrlPathEncode("CHOFUN") + "&type=" + HttpUtility.UrlPathEncode("3");
        //message = HttpUtility.UrlPathEncode(message);
        // String strPost = "?user=" + HttpUtility.UrlPathEncode("deepaktest") + "&password=" + HttpUtility.UrlPathEncode("9907385555") + "&sender=" + HttpUtility.UrlPathEncode("DengSo") + "&mobile=" + HttpUtility.UrlPathEncode(phoneNo) + "&type=" + HttpUtility.UrlPathEncode("3") + "&message=" + message;
        StreamWriter myWriter = null;
        HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url + strPost);
        objRequest.Method = "POST";
        objRequest.ContentLength = Encoding.UTF8.GetByteCount(strPost);
        objRequest.ContentType = "application/x-www-form-urlencoded";
        try
        {
            myWriter = new StreamWriter(objRequest.GetRequestStream());
            myWriter.Write(strPost);
        }
        catch (Exception e)
        {
            return e.Message;
        }
        finally
        {
            myWriter.Close();
        }
        HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
        using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
        {
            result = sr.ReadToEnd();
            // Close and clean up the StreamReader sr.Close();
        }
        return result;
    }

    public string GetPassword()
    {
        StringBuilder builder = new StringBuilder();
        builder.Append(RandomString(4, true));
        builder.Append(RandomNumber(1000, 9999));
        builder.Append(RandomString(2, false));
        return builder.ToString();
    }
    private string RandomString(int size, bool lowerCase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
            return builder.ToString().ToLower();
        return builder.ToString();
    }
    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    // For taking printout

    public void PrintWebControl(Control ctrl)
    {
        //string script = "<script> function changeImage() { document.getElementById('x').innerHTML= '<img src="+temp+" />'; } </script>";
        PrintWebControl(ctrl, string.Empty);
        //PrintWebControl(ctrl, script);
    }

    public static void PrintWebControl(Control ctrl, string Script)
    {
        StringWriter stringWrite = new StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new System.Web.UI.HtmlTextWriter(stringWrite);
        if (ctrl is WebControl)
        {
            Unit w = new Unit(100, UnitType.Percentage); ((WebControl)ctrl).Width = w;
        }
        Page pg = new Page();
        pg.EnableEventValidation = false;
        if (Script != string.Empty)
        {
            pg.ClientScript.RegisterStartupScript(pg.GetType(), "PrintJavaScript", Script);
        }
        HtmlForm frm = new HtmlForm();
        pg.Controls.Add(frm);
        frm.Attributes.Add("runat", "server");
        frm.Controls.Add(ctrl);
        pg.DesignerInitialize();
        pg.RenderControl(htmlWrite);
        string strHTML = stringWrite.ToString();
        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Write(strHTML);
        HttpContext.Current.Response.Write("<script>window.print();</script>");
        HttpContext.Current.Response.End();
    }
}
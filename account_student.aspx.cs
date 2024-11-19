using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections;
using System.IO.Compression;

public partial class account_student : System.Web.UI.Page
{
    static int y, st_min, st_max, st_current;
   // string[] st_rollno = new string[100];
    private String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    static string section_id;// = DropDownList6.SelectedItem.ToString();
    static string class_id;//
   static string st_rollno;
    protected void Page_Load(object sender, EventArgs e)
    {

        login_chk lc = new login_chk();

        //string user_id = Session["user_id"].ToString();
        //string pass_id = Session["pwrd"].ToString();

        //bool done = lc.admin_login_chk(user_id, pass_id);
        //if (done == false)
        //{
        //    Response.Redirect("slogin.aspx");

        //}
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        section_id = DropDownList6.SelectedItem.ToString();
        class_id = DropDownList4.SelectedValue.ToString();

        string strQuery = "SELECT st_rollno, st_name, st_mother_name, st_father_name, dob, class_id, section_id FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            st_current = 1;
            Label1.Text = rdr.GetString(0);
            Label2.Text = rdr.GetString(1);
            Label3.Text = rdr.GetString(2);
            Label4.Text = rdr.GetString(3);
            Label5.Text = rdr.GetString(4);

            Label7.Text = DropDownList4.SelectedItem.ToString();
            Label8.Text = section_id;

            class_id = rdr.GetString(5);
            section_id = rdr.GetString(6);
            st_rollno = rdr.GetString(0);
           
            //int temp=1;
            //while (rdr.Read())
            //{
            //    st_rollno[temp] = rdr.GetString(0);
            //}
        }
        rdr.Close();
        
        con.Close();
        BindData();
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        string strQuery = "SELECT st_rollno, st_name, st_mother_name, st_father_name, dob, class_id, section_id FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();
        st_current = st_current + 1;
        int temp = 1;
        if (rdr.HasRows)
        {
            while (rdr.Read() && st_current >= temp)
            {
                // st_current = 1;
                Label1.Text = rdr.GetString(0);
                Label2.Text = rdr.GetString(1);
                Label3.Text = rdr.GetString(2);
                Label4.Text = rdr.GetString(3);
                Label5.Text = rdr.GetString(4);

                Label7.Text = DropDownList4.SelectedItem.ToString();
                Label8.Text = section_id;
                //int temp=1;
                //while (rdr.Read())
                //{
                //    st_rollno[temp] = rdr.GetString(0);
                //}
                temp++;
                class_id = rdr.GetString(5);
                section_id = rdr.GetString(6);
                st_rollno = rdr.GetString(0);
           
            }
        }
        rdr.Close();
        
        con.Close();
        BindData();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       
        string strQuery = "SELECT st_rollno, st_name, st_mother_name, st_father_name, dob, class_id, section_id FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();
        if (st_current > 1)
        {
            st_current = st_current - 1;
            int temp = 1;
            if (rdr.HasRows)
            {
                while (rdr.Read() && st_current >= temp)
                {
                    // st_current = 1;
                    Label1.Text = rdr.GetString(0);
                    Label2.Text = rdr.GetString(1);
                    Label3.Text = rdr.GetString(2);
                    Label4.Text = rdr.GetString(3);
                    Label5.Text = rdr.GetString(4);

                    Label7.Text = DropDownList4.SelectedItem.ToString();
                    Label8.Text = section_id;
                    //int temp=1;
                    //while (rdr.Read())
                    //{
                    //    st_rollno[temp] = rdr.GetString(0);
                    //}
                    class_id = rdr.GetString(5);
                    section_id = rdr.GetString(6);
                    st_rollno = rdr.GetString(0);
           
                    temp++;
                }
            }
        }
        rdr.Close();
       
        con.Close();
        BindData();
    }
    protected void Buttonfind_Click(object sender, EventArgs e)
    {
        st_rollno = TextBox22.Text;

        string strQuery = "SELECT st_rollno, st_name, st_mother_name, st_father_name, dob, class_id, section_id FROM st_final_dataset WHERE (st_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            st_current = 1;
            Label1.Text = rdr.GetString(0);
            Label2.Text = rdr.GetString(1);
            Label3.Text = rdr.GetString(2);
            Label4.Text = rdr.GetString(3);
            Label5.Text = rdr.GetString(4);

            Label7.Text = rdr.GetString(5);
            Label8.Text = rdr.GetString(6);

            class_id = rdr.GetString(5);
            section_id = rdr.GetString(6);
            //int temp=1;
            //while (rdr.Read())
            //{
            //    st_rollno[temp] = rdr.GetString(0);
            //}
        }
        rdr.Close();

        con.Close();
        BindData();
    }
   

    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
    }

    
    private void BindData()
    {
        string strQuery;


        strQuery = "SELECT transaction_id, amt_message, amount, dob FROM account_table WHERE (st_rollno = '" + st_rollno + "')";
      
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();

    }
}
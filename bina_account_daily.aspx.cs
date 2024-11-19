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

public partial class account_daily : System.Web.UI.Page
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
   
   
   
   
   
    protected void Buttonfind_Click(object sender, EventArgs e)
    {
         string datee = TextBox22.Text;
        string school_id = DropDownList7.SelectedValue.ToString();
        string strQuery = "SELECT transaction_id, st_rollno, amt_message, debit_amount,debit_message,dob FROM account_table_bina WHERE ( (CONVERT(datetime, dob, 103) >= CONVERT(datetime, '" + datee + "', 103)) and debit_amount>0 AND (school_id = '" + school_id + "'))";
        BindData(strQuery); 
        GridView1.Visible = true;
        login_chk ck = new login_chk();
        
        //Footer---------------------
        object value;
        string total;
        //Calculate Sum and display in Footer Row
        //  decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Price"));
        strQuery = "SELECT SUM(debit_amount) as paid FROM account_table_bina WHERE ( (CONVERT(datetime, dob, 103) >= CONVERT(datetime, '" + datee + "', 103)) and debit_amount>0 AND (school_id = '" + school_id + "'))";
      SqlDataReader  rdr = ck.connection_select(strQuery); //cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            // st_current = 1;
            //Label1.Text = rdr.GetString(0);
            //decimal ttotal = dt.AsEnumerable().Sum(row => row.Field<decimal>("Paid"));
            //total = rdr.GetInt32(1);
            //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
            value = rdr.GetValue(rdr.GetOrdinal("paid"));
            total = value.ToString();
            GridView1.FooterRow.Cells[4].Text = total;
            //value = rdr.GetValue(rdr.GetOrdinal("paid"));
            //total = value.ToString();
            //GridView1.FooterRow.Cells[1].Text = total;

            //value = rdr.GetValue(rdr.GetOrdinal("remaining"));
            //total = value.ToString();
            //GridView1.FooterRow.Cells[2].Text = total;

            //total =Int32.Parse(rdr.GetString(2).ToString());

            //.ToString("N2");

            //total = rdr.GetInt32(3);
            //GridView2.FooterRow.Cells[3].Text = total.ToString("N2");

            //GridView2.FooterRow.Cells[0].Text = "Total";
            //GridView2.FooterRow.Cells[0].HorizontalAlign = HorizontalAlign.Right;
            //total = int.Parse(rdr.GetString(1));
            //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
            //total = int.Parse(rdr.GetString(2));
            //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
       // BindData();

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
    
    
    private void BindData(string strQuery)
    {
       SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("bina_school_admin.aspx");
    }

    protected void Buttonfind_Click_date(object sender, EventArgs e)
    {
        string datee = TextBox22.Text;
        string strQuery = "SELECT transaction_id, st_rollno, amt_message, debit_amount,debit_message,dob FROM account_table_bina WHERE ( (CONVERT(datetime, dob, 103) = CONVERT(datetime, '" + datee + "', 103)) and debit_amount>0)";
        BindData(strQuery);
        GridView1.Visible = true;
        login_chk ck = new login_chk();

        //Footer---------------------
        object value;
        string total;
        //Calculate Sum and display in Footer Row
        //  decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Price"));
        strQuery = "SELECT SUM(debit_amount) as paid FROM account_table_bina WHERE ( (CONVERT(datetime, dob, 103) = CONVERT(datetime, '" + datee + "', 103)) and debit_amount>0)";
        SqlDataReader rdr = ck.connection_select(strQuery); //cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            // st_current = 1;
            //Label1.Text = rdr.GetString(0);
            //decimal ttotal = dt.AsEnumerable().Sum(row => row.Field<decimal>("Paid"));
            //total = rdr.GetInt32(1);
            //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
            value = rdr.GetValue(rdr.GetOrdinal("paid"));
            total = value.ToString();
            GridView1.FooterRow.Cells[4].Text = total;
            //value = rdr.GetValue(rdr.GetOrdinal("paid"));
            //total = value.ToString();
            //GridView1.FooterRow.Cells[1].Text = total;

            //value = rdr.GetValue(rdr.GetOrdinal("remaining"));
            //total = value.ToString();
            //GridView1.FooterRow.Cells[2].Text = total;

            //total =Int32.Parse(rdr.GetString(2).ToString());

            //.ToString("N2");

            //total = rdr.GetInt32(3);
            //GridView2.FooterRow.Cells[3].Text = total.ToString("N2");

            //GridView2.FooterRow.Cells[0].Text = "Total";
            //GridView2.FooterRow.Cells[0].HorizontalAlign = HorizontalAlign.Right;
            //total = int.Parse(rdr.GetString(1));
            //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
            //total = int.Parse(rdr.GetString(2));
            //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
        }
    }
}
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
         string strQuery = "SELECT transaction_id, st_rollno, amt_message, amount, debit_amount,debit_message,dob FROM account_table WHERE ( (CONVERT(datetime, dob, 103) >= CONVERT(datetime, '" + datee + "', 103)))";
        BindData(strQuery); 
        GridView1.Visible = true;
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
        Response.Redirect("main_menu.aspx");
    }
}
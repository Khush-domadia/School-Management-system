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

public partial class account_credit : System.Web.UI.Page
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

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        section_id = DropDownList6.SelectedItem.ToString();
        class_id = DropDownList4.SelectedItem.ToString();
        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, st_father_mobile, class_id, section_id FROM st_ramayana_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        BindData(strQuery);
        GridView1.Visible = true;
        
    }
   
   
    protected void Button2_Click(object sender, EventArgs e)
    {

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


       
    }
   
    protected void Buttonfind_Click(object sender, EventArgs e)
    {
        section_id = DropDownList6.SelectedItem.ToString();
        class_id = DropDownList4.SelectedItem.ToString();
        st_rollno = TextBox22.Text;
        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, st_father_mobile, class_id, section_id FROM st_ramayana_dataset WHERE (st_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
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
    
    protected void DeleteCustomer(object sender, EventArgs e)
    {
        
    }
    
    private void BindData(string strQuery)
    {
       SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();

    }
    protected void Change_abstent(object sender, EventArgs e)
    {
        CheckBox check = new CheckBox();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {


            check = (CheckBox)GridView1.Rows[i].FindControl("rd_p");
            if (check.Checked == true)
            {

                check.Checked = false;

            }
            else
            {
                check.Checked = true;

            }
        }
        //  Boolean chk_abs = ((RadioButton)GridView1.FindControl("rd_absent"));
        //chk_abs.Checked = true;
    }
    protected void AddNewCustomer(object sender, EventArgs e)
    {
        
        string sql = "select max(transaction_id) as last_id from account_table;";
       login_chk ck=new login_chk();
       SqlDataReader rdr = ck.connection_select(sql);
       int transactionno;
       string message = TextBox23.Text;
       string amount = TextBox24.Text;
       if (message.Equals("") && amount.Equals(""))
       {
           ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Message and amount both');", true);
                  
           return;
       }
       string dob = DateTime.Now.ToString("dd-MM-yyyy"); //DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
       
        if (rdr.HasRows)
       {
           rdr.Read();
           transactionno = int.Parse(rdr.GetValue(0).ToString());
           transactionno++;


           CheckBox check = new CheckBox();
           Label rollno = new Label();
          // string sql;
           for (int i = 0; i < GridView1.Rows.Count; i++)
           {


               check = (CheckBox)GridView1.Rows[i].FindControl("rd_p");

               rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
               string date_int = ck.date_ints(dob);
             
               string strollno = rollno.Text;
               if (check.Checked == true)
               {
                   sql = "INSERT INTO account_table VALUES ('" + transactionno + "', '" + strollno + "', '" + message + "', " + amount + ", '" + dob + "',0,'', '" + date_int + "')";


                  bool done= ck.connection_insert(sql);
                  if (done.Equals(true))
                  {
                      transactionno++;
                     

                  }
                  else
                  {
                      ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Not Credit');", true);


                  }
               }
           }

       }
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Succesfully Credit');", true);
        TextBox23.Text = "";
        TextBox24.Text = "";
        GridView1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("main_menu.aspx");
    }
}
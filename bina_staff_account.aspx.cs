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
    static string school_id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       string month_id = DropDownList2.SelectedItem.ToString();
       string year_id = DropDownList3.SelectedItem.ToString();

        string profile_id = DropDownList9.SelectedItem.ToString();
        school_id = DropDownList7.SelectedValue.ToString();

        string sql = "SELECT *FROM staff_account WHERE staff_month = '"+month_id+"' and staff_year='"+year_id+"' and staff_school_name='"+school_id+"' and staff_profile_cat='"+profile_id+"'";
       login_chk ck=new login_chk();
       SqlDataReader rdr = ck.connection_select(sql);

       if (rdr.HasRows)
       {
          
           GridView2.Visible = true;

           GridView1.Visible = false;
           BindData(sql);
           rdr.Close();

       }
       else
       {
           string strQuery = "SELECT staff_rollno,staff_name,staff_father_name,staff_salary,staff_working_day FROM staff_final_dataset WHERE staff_resp='" + school_id + "' and profile_cat='" + profile_id + "'";//'class_id = '" + class_id + "')";
          
           GridView1.Visible = true;

           GridView2.Visible = false;
           BindData(strQuery);
           rdr.Close();
       }
    }
   
   
    protected void Button2_Click(object sender, EventArgs e)
    {

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


       
    }
   
    protected void Buttonfind_Click(object sender, EventArgs e)
    {
        
        school_id = DropDownList7.SelectedValue.ToString();
        st_rollno = TextBox22.Text;
        string strQuery = "SELECT * from staff_account WHERE (staff_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
        BindData_show(strQuery); 
       // GridView1.Visible = true;
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
     private void BindData_show(string strQuery)
    {
       SqlCommand cmd = new SqlCommand(strQuery);
       
           GridView3.DataSource = GetData(cmd);
           GridView3.DataBind();
           GridView1.Visible = false;
           GridView2.Visible = false;
           GridView3.Visible = true;
     }
    private void BindData(string strQuery)
    {
       SqlCommand cmd = new SqlCommand(strQuery);
       if (GridView1.Visible == true)
       {
           GridView1.DataSource = GetData(cmd);
           GridView1.DataBind();
       }
       else
       {

           GridView2.DataSource = GetData(cmd);
           GridView2.DataBind();
       }
       GridView3.Visible = false;
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
       string sql;// = "select max(transaction_id) as last_id from account_table_bina;";
       login_chk ck=new login_chk();
      // SqlDataReader rdr = ck.connection_select(sql);
       int transactionno;
       string pf = TextBox23.Text;
       string spf = TextBox24.Text;
       float dayss = float.Parse(TextBox25.Text);
       if (pf.Equals("") && spf.Equals(""))
       {
           ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter PF%');", true);
                  
           return;
       }
       string dob = DateTime.Now.ToString("dd-MM-yyyy"); //DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
       string month_id = DropDownList2.SelectedItem.ToString();
       string year_id = DropDownList3.SelectedItem.ToString();
       string profile_id = DropDownList9.SelectedItem.ToString();
       
       TextBox check = new TextBox();
           Label rollno = new Label();
           Label staff_name = new Label();
           Label staff_f_name = new Label();
           Label staff_salary = new Label();
          // string sql;
           for (int i = 0; i < GridView1.Rows.Count; i++)
           {

               if (GridView1.Visible == true)
               {
                   check = (TextBox)GridView1.Rows[i].FindControl("lblNote");

                   rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
                   staff_name = (Label)GridView1.Rows[i].FindControl("lblst_name");
                   staff_f_name = (Label)GridView1.Rows[i].FindControl("lblst_father_name");
                   staff_salary = (Label)GridView1.Rows[i].FindControl("lblst_salary");
                   // rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
               }
               else
               {
                   check = (TextBox)GridView2.Rows[i].FindControl("lblNote");

                   rollno = (Label)GridView2.Rows[i].FindControl("lblst_rollno");
                   staff_name = (Label)GridView2.Rows[i].FindControl("lblst_name");
                   staff_f_name = (Label)GridView2.Rows[i].FindControl("lblst_father_name");
                   staff_salary = (Label)GridView2.Rows[i].FindControl("lblst_salary");
               
               }


               string date_int = ck.date_ints(dob);
               int working_days = int.Parse(check.Text);
               string strollno = rollno.Text;
               string staff_namet = staff_name.Text;
               string staff_f_namet = staff_f_name.Text;
               string staff_salaryt = (((float.Parse(staff_salary.Text) / dayss) * working_days)).ToString();
               string spft = (((float.Parse(staff_salary.Text) / dayss) * working_days) * float.Parse(spf)).ToString();
               string pft = (((float.Parse(staff_salary.Text) / dayss) * working_days) * float.Parse(pf)).ToString();

               sql = "INSERT INTO staff_account VALUES ('" + strollno + "', '" + staff_namet + "', '" + staff_f_namet + "', '" + staff_salaryt + "', '" + month_id + "', '" + year_id + "', '" + pft + "', '" + spft + "', '" + check.Text + "', '" + school_id + "', '" + profile_id + "')";


                  bool done= ck.connection_insert(sql);
              

       
           }
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Succesfully Credit');", true);
        TextBox23.Text = "";
        TextBox24.Text = "";
        GridView1.Visible = false;
    }
    protected void AddNewCustomer_update(object sender, EventArgs e)
    {
        string sql;// = "select max(transaction_id) as last_id from account_table_bina;";
      //  sql = "delete * FROM staff_account WHERE staff_month = '" + month_id + "' and staff_year='" + year_id + "' and staff_school_name='" + school_id + "' and staff_profile_cat='" + profile_id + "'";
        
        login_chk ck = new login_chk();
      //  bool donee = ck.connection_insert(sql);
        // SqlDataReader rdr = ck.connection_select(sql);
        int transactionno;
        string pf = TextBox23.Text;
        string spf = TextBox24.Text;
        float dayss = float.Parse(TextBox25.Text);
        if (pf.Equals("") && spf.Equals(""))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter PF%');", true);

            return;
        }
        string dob = DateTime.Now.ToString("dd-MM-yyyy"); //DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
        string month_id = DropDownList2.SelectedItem.ToString();
        string year_id = DropDownList3.SelectedItem.ToString();
        string profile_id = DropDownList9.SelectedItem.ToString();
        sql = "delete FROM staff_account WHERE staff_month = '" + month_id + "' and staff_year='" + year_id + "' and staff_school_name='" + school_id + "' and staff_profile_cat='" + profile_id + "'";

     //   login_chk ck = new login_chk();
        bool donee = ck.connection_insert(sql);
      
        TextBox check = new TextBox();
        Label rollno = new Label();
        Label staff_name = new Label();
        Label staff_f_name = new Label();
        Label staff_salary = new Label();
        // string sql;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            if (GridView1.Visible == true)
            {
                check = (TextBox)GridView1.Rows[i].FindControl("lblNote");

                rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
                staff_name = (Label)GridView1.Rows[i].FindControl("lblst_name");
                staff_f_name = (Label)GridView1.Rows[i].FindControl("lblst_father_name");
                staff_salary = (Label)GridView1.Rows[i].FindControl("lblst_salary");
                // rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
            }
            else
            {
                check = (TextBox)GridView2.Rows[i].FindControl("lblNote");

                rollno = (Label)GridView2.Rows[i].FindControl("lblst_rollno");
                staff_name = (Label)GridView2.Rows[i].FindControl("lblst_name");
                staff_f_name = (Label)GridView2.Rows[i].FindControl("lblst_father_name");
                staff_salary = (Label)GridView2.Rows[i].FindControl("lblst_salary");

            }


            string date_int = ck.date_ints(dob);
            float working_days = float.Parse(check.Text);
            string strollno = rollno.Text;
            string staff_namet = staff_name.Text;
            string staff_f_namet = staff_f_name.Text;
            string staff_salaryt = (((float.Parse(staff_salary.Text) / dayss) * working_days)).ToString();
            string spft = (((float.Parse(staff_salary.Text) / dayss) * working_days) * float.Parse(spf)).ToString();
            string pft = (((float.Parse(staff_salary.Text) / dayss) * working_days) * float.Parse(pf)).ToString();

            sql = "INSERT INTO staff_account VALUES ('" + strollno + "', '" + staff_namet + "', '" + staff_f_namet + "', '" + staff_salaryt + "', '" + month_id + "', '" + year_id + "', '" + pft + "', '" + spft + "', '" + check.Text + "', '" + school_id + "', '" + profile_id + "')";


            bool done = ck.connection_insert(sql);



        }
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Succesfully Credit');", true);
        TextBox23.Text = "";
        TextBox24.Text = "";
        GridView1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("bina_school_admin.aspx");
    }
}
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

public partial class account_debiit : System.Web.UI.Page
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
        panel1.Visible = true;
        login_chk lc = new login_chk();

       
        panel1.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        section_id = DropDownList6.SelectedItem.ToString();
        class_id = DropDownList4.SelectedItem.ToString();
        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, st_father_mobile, class_id, section_id FROM st_ramayana_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        //FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        BindData(strQuery);
        GridView1.Visible = true;
        panel1.Visible = false;
    }
   
   
    protected void Button2_Click(object sender, EventArgs e)
    {

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


       
    }
   
    protected void Buttonfind_Click(object sender, EventArgs e)
    {
        st_rollno = TextBox22.Text;

        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, dob, st_father_mobile, class_id, section_id FROM st_ramayana_dataset WHERE (st_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);
        login_chk ck = new login_chk();
        
        //cmd.CommandText = ;
       
        SqlDataReader rdr = ck.connection_select(strQuery); //cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            st_current = 1;
            //Label1.Text = rdr.GetString(0);
            Label2.Text = rdr.GetString(1);
            Label5.Text = rdr.GetString(3);
            Label4.Text = rdr.GetString(2);
            Label3.Text = rdr.GetString(4);

            Label7.Text = rdr.GetString(6);
            Label8.Text = rdr.GetString(7);
            Label9.Text = rdr.GetString(5);
            class_id = rdr.GetString(6);
            section_id = rdr.GetString(7);
            //int temp=1;
            //while (rdr.Read())
            //{
            //    st_rollno[temp] = rdr.GetString(0);
            //}
        }
        rdr.Close(); 
        
        section_id = DropDownList6.SelectedItem.ToString();
        class_id = DropDownList4.SelectedItem.ToString();
        st_rollno = TextBox22.Text;
        //string strQuery = "SELECT st_final_dataset.st_rollno, st_final_dataset.st_name, st_final_dataset.st_father_name, st_final_dataset.st_mobile, SUM(account_table.amount) AS Expr1 FROM st_final_dataset INNER JOIN account_table ON st_final_dataset.st_rollno = account_table.st_rollno WHERE (st_final_dataset.st_rollno = '" + st_rollno + "') GROUP BY st_final_dataset.st_rollno, st_final_dataset.st_name, st_final_dataset.st_father_name, st_final_dataset.st_mobile;";
   
      strQuery = "SELECT SUM(amount) AS Total, SUM(debit_amount) AS Paid, SUM(amount) - SUM(debit_amount) AS Remaining, amt_message FROM account_table WHERE (st_rollno = '"+st_rollno+"') GROUP BY amt_message";//'class_id = '" + class_id + "')";
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView2.DataSource = GetData(cmd);
        GridView2.DataBind(); 
        GridView2.Visible = true;
        GridView1.Visible = false;
        panel1.Visible = true;
        object value;
        string total;
        //Calculate Sum and display in Footer Row
      //  decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Price"));
        strQuery = "SELECT SUM(amount) as total, SUM(debit_amount) as paid, SUM(amount) - SUM(debit_amount) as remaining FROM account_table WHERE (st_rollno = '"+st_rollno+"')";
          rdr = ck.connection_select(strQuery); //cmd.ExecuteReader();
        
         if (rdr.HasRows)
         {
             rdr.Read();

            // st_current = 1;
             //Label1.Text = rdr.GetString(0);
             //decimal ttotal = dt.AsEnumerable().Sum(row => row.Field<decimal>("Paid"));
             //total = rdr.GetInt32(1);
             //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
              value = rdr.GetValue(rdr.GetOrdinal("total"));
            total = value.ToString();
            GridView2.FooterRow.Cells[3].Text = total;
            value = rdr.GetValue(rdr.GetOrdinal("paid"));
            total = value.ToString();
            GridView2.FooterRow.Cells[1].Text = total;

            value = rdr.GetValue(rdr.GetOrdinal("remaining"));
            total = value.ToString();
            GridView2.FooterRow.Cells[2].Text = total;

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
       int amount =int.Parse(TextBox24.Text);
       if (message.Equals("") && amount.Equals(""))
       {
           ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Message and amount both');", true);
                  
           return;
       }
       string dob = DateTime.Now.ToString("dd/MM/yyyy"); //DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
       
        if (rdr.HasRows)
       {
           rdr.Read();
           transactionno = int.Parse(rdr.GetValue(0).ToString());
           transactionno++;


           CheckBox check = new CheckBox();
           Label rollno = new Label();
           Label st_mobile = new Label();
          
          // string sql;
           for (int i = 0; i < GridView1.Rows.Count; i++)
           {


               check = (CheckBox)GridView1.Rows[i].FindControl("rd_p");

               rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
               st_mobile = (Label)GridView1.Rows[i].FindControl("lblst_mobile");
               string date_int = ck.date_ints(dob);
               string strollno = rollno.Text;
               if (check.Checked == true)
               {
                   sql = "INSERT INTO account_table VALUES ('" + transactionno + "', '" + strollno + "', '" + message + "', 0, '" + dob + "'," + amount + ", 'Direct', '" + date_int + "')";


                  bool done= ck.connection_insert(sql);
                  transactionno++;
                  if (done.Equals(true))
                  {
                     

                      string messsage = "Your Child Account Debit by:" + amount + "Rs.";

                      string st = ck.sendMessage(st_mobile.Text, messsage);

                      //done = ck.sms_message(messsage, strollno);

                     
                  }
                  else
                  {
                      ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Not Debit');", true);


                  }
               }
           }

       }
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Succesfully Debit');", true);
        TextBox23.Text = "";
        TextBox24.Text = "";
        GridView1.Visible = false;
    }

    protected void AddNew_debit(object sender, EventArgs e)
    {

        string sql = "select max(transaction_id) as last_id from account_table;";
        login_chk ck = new login_chk();
        SqlDataReader rdr = ck.connection_select(sql);
        int transactionno;

        string dob = DateTime.Now.ToString("dd/MM/yyyy"); 
        if (rdr.HasRows)
        {
            rdr.Read();
            transactionno = int.Parse(rdr.GetValue(0).ToString());
            transactionno++;


            CheckBox check = new CheckBox();
            Label rollno = new Label();
            Label st_mobile = new Label();
            TextBox st_message = new TextBox();
            TextBox st_amount = new TextBox();//DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
            string message;
            int amount=0;
            // string sql;
            for (int i = 0; i < GridView2.Rows.Count; i++)
            {

                check = (CheckBox)GridView2.Rows[i].FindControl("rd_p");

                                if (check.Checked == true)
                {

                message = ((TextBox)GridView2.Rows[i].FindControl("lblNote")).Text;
                 amount =int.Parse(((TextBox)GridView2.Rows[i].FindControl("lblRemaining")).Text);
                 if (message.Equals("") && amount.Equals(""))
                 {
                     ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Message and amount both');", true);

                     return;
                 }
                }
            }
            bool done=false;
            string strollno=""; 
            for (int i = 0; i < GridView2.Rows.Count; i++)
            {
                check = (CheckBox)GridView2.Rows[i].FindControl("rd_p");

                //rollno = (Label)GridView1.Rows[i].FindControl("lblst_rollno");
                //st_mobile = (Label)GridView1.Rows[i].FindControl("lblst_mobile");
               string pre_message = ((Label)GridView2.Rows[i].FindControl("lblamt_message")).Text;
                message = ((TextBox)GridView2.Rows[i].FindControl("lblNote")).Text;
                string temp_amt = ((TextBox)GridView2.Rows[i].FindControl("lblRemaining")).Text;
                if(temp_amt.Equals(""))
                {
                    amount=0;
                }
                else
                {
                amount = int.Parse(temp_amt);
                }
                strollno =TextBox22.Text;
                string date_int = ck.date_ints(dob);
                if (check.Checked == true)
                {
                    sql = "INSERT INTO account_table VALUES ('" + transactionno + "', '" + strollno + "', '" + pre_message + "', 0, '" + dob + "'," + amount + ", '" + message + "', '" + date_int + "')";


                     done = ck.connection_insert(sql);
                     transactionno++;
                }
            }
            if (done.Equals(true))
                    {
                        transactionno++;

                        string messsage = "Your Child Account Debit by:" + amount + "Rs.";

                        //string st = ck.sendMessage(st_mobile.Text, messsage);

                        //done = ck.sms_message(messsage, strollno);

                        //if (done == true)
                        //{

                        //}
                        //else
                        //{

                        //}
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Not Debit');", true);


                    }
                }
          
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Amount is Succesfully Debit');", true);
        TextBox23.Text = "";
        TextBox24.Text = "";
        GridView2.Visible = false;
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        panel1.Visible = true;
        login_chk ck = new login_chk();
        Session["ctrl"] = panel1;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Control ctrl = (Control)Session["ctrl"];
        ck.PrintWebControl(ctrl);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("main_menu.aspx");
    }
}
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
    static string school_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        panel1.Visible = true;
        login_chk lc = new login_chk();
       if (!Page.IsPostBack)
        {
            TextBox25.Text = DateTime.Now.ToString("dd/MM/yyyy"); //DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
      }
        panel1.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        section_id = DropDownList6.SelectedItem.ToString();
        class_id = DropDownList4.SelectedItem.ToString();
        school_id = DropDownList7.SelectedValue.ToString();
        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, st_father_mobile, class_id, section_id FROM st_bina_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "') AND (school_id = '" + school_id + "')";//'class_id = '" + class_id + "')";
        //FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        BindData(strQuery);
        GridView1.Visible = true;
        panel1.Visible = false;


        GridView2.Visible = false;
        panel2.Visible = false;
    }
   
   
    protected void Button2_Click(object sender, EventArgs e)
    {

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


       
    }

    protected void Button_receipt_Click(object sender, EventArgs e)
    {
        int receipt_no = 0;
        string sql = "select max(receipt_no) as receipt_id from account_table_bina where school_id='" + school_id + "';";
        login_chk ck = new login_chk();
        SqlDataReader rdr = ck.connection_select(sql);
        if (rdr.HasRows)
        {
            rdr.Read();
            receipt_no = int.Parse(rdr.GetValue(0).ToString());
            receipt_no++;
        }
        rdr.Close();
        st_rollno = TextBox22.Text;
        string dof = TextBox25.Text;
        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, dob, st_father_mobile, class_id, section_id, school_id FROM st_bina_dataset WHERE (st_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);
       // login_chk ck = new login_chk();
        
        //cmd.CommandText = ;
       
         rdr = ck.connection_select(strQuery); //cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            st_current = 1;
            //Label1.Text = rdr.GetString(0);
            Label6.Text = rdr.GetString(1);
            Label15.Text = rdr.GetString(3);
            Label14.Text = st_rollno;// rdr.GetString(2);
            Label61.Text = st_rollno; 
            Label10.Text = rdr.GetString(4);

           Label12.Text = rdr.GetString(6);
            Label13.Text = rdr.GetString(7);
            Label11.Text = rdr.GetString(5);

            
            

            class_id = rdr.GetString(6);
            section_id = rdr.GetString(7);
            school_id = rdr.GetString(8);
            
         //----school copy
            Label17.Text = dof;
            Label26.Text = dof;
           
            Label30.Text = rdr.GetString(1);
            Label31.Text = rdr.GetString(4);
            Label37.Text = rdr.GetString(6);
            Label38.Text = rdr.GetString(7);
            Label42.Text = rdr.GetString(3);
            Label34.Text = rdr.GetString(5);
            if (school_id.Equals("001"))
            {

                Label16.Text = "NDJEMH"+receipt_no.ToString();
                Label27.Text = "NDJEMH" + receipt_no.ToString();
                Label18.Visible = true;
                Label20.Visible = true;
                Label22.Visible = true;
                Label24.Visible = true;

                Label19.Visible = false;
                Label21.Visible = false;
                Label23.Visible = false;
                Label25.Visible = false;
                
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;

                Label28.Visible = true;
                Label40.Visible = true;
                Label32.Visible = true;
                Label35.Visible = true;

                Label29.Visible = false;
                Label41.Visible = false;
                Label33.Visible = false;
                Label36.Visible = false;

                Label44.Text = "Shri Nabhinandan Digambar Jain English Medium High School";

            }
            else if (school_id.Equals("002"))
            {
                Label18.Visible = false;
                Label20.Visible = false;
                Label22.Visible = false;
                Label24.Visible = false;

                Label19.Visible = true;
                Label21.Visible = true;
                Label23.Visible = true;
                Label25.Visible = true;

                Panel4.Visible = true;
                Panel3.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;

                Label28.Visible = false;
                Label40.Visible = false;
                Label32.Visible = false;
                Label35.Visible = false;

                Label29.Visible = true;
                Label41.Visible = true;
                Label33.Visible = true;
                Label36.Visible = true;

                Label16.Text = "NDJPGS" + receipt_no.ToString();
                Label27.Text = "NDJPGS" + receipt_no.ToString();
                Label44.Text = "श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक कन्या विद्यालय बीना";
            }
            else if (school_id.Equals("003"))
            {
                Label18.Visible = false;
                Label20.Visible = false;
                Label22.Visible = false;
                Label24.Visible = false;

                Label19.Visible = true;
                Label21.Visible = true;
                Label23.Visible = true;
                Label25.Visible = true;

                Panel5.Visible = true;
                Panel4.Visible = false;
                Panel3.Visible = false;
                Panel6.Visible = false;

                Label28.Visible = false;
                Label40.Visible = false;
                Label32.Visible = false;
                Label35.Visible = false;

                Label29.Visible = true;
                Label41.Visible = true;
                Label33.Visible = true;
                Label36.Visible = true;

                Label16.Text = "NDJHGS" + receipt_no.ToString();
                Label27.Text = "NDJHGS" + receipt_no.ToString();
                Label44.Text = "श्री नाभिनन्दन दिगंबर जैन उच्च. माध्यमिक कन्या विद्यालय बीना";
            }
            else if (school_id.Equals("004"))
            {
                Label18.Visible = false;
                Label20.Visible = false;
                Label22.Visible = false;
                Label24.Visible = false;

                Label19.Visible = true;
                Label21.Visible = true;
                Label23.Visible = true;
                Label25.Visible = true;

                Panel6.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel3.Visible = false;

                Label28.Visible = false;
                Label40.Visible = false;
                Label32.Visible = false;
                Label35.Visible = false;

                Label29.Visible = true;
                Label41.Visible = true;
                Label33.Visible = true;
                Label36.Visible = true;

                Label16.Text = "NDJPSS" + receipt_no.ToString();
                Label27.Text = "NDJPSS" + receipt_no.ToString();
                Label44.Text = "श्री नाभिनन्दन दिगंबर जैन पूर्व माध्यमिक संस्कृत विद्यालय बीना";
            }
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

        strQuery = "SELECT  SUM(debit_amount) AS Paid,amt_message FROM account_table_bina WHERE (st_rollno = '" + st_rollno + "') and (dob='" + dof + "') GROUP BY amt_message";//'class_id = '" + class_id + "')";
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView3.DataSource = GetData(cmd);
        GridView3.DataBind();
        GridView4.DataSource = GetData(cmd);
        GridView4.DataBind(); 

        GridView3.Visible = true;
        GridView1.Visible = false;

        GridView2.Visible = false;

        panel2.Visible = true;
        panel1.Visible = false;
        object value;
        string total;
        //Calculate Sum and display in Footer Row
      //  decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Price"));
        strQuery = "SELECT SUM(debit_amount) as paid FROM account_table_bina WHERE (st_rollno = '" + st_rollno + "') and (dob='" + dof + "') ";
          rdr = ck.connection_select(strQuery); //cmd.ExecuteReader();
        
         if (rdr.HasRows)
         {
             rdr.Read();

            // st_current = 1;
             //Label1.Text = rdr.GetString(0);
             //decimal ttotal = dt.AsEnumerable().Sum(row => row.Field<decimal>("Paid"));
             //total = rdr.GetInt32(1);
             //GridView2.FooterRow.Cells[1].Text = total.ToString("N2");
            //  value = rdr.GetValue(rdr.GetOrdinal("total"));
            //total = value.ToString();
          //  GridView2.FooterRow.Cells[3].Text = total;
             GridView3.FooterRow.Cells[0].Text = "Total";
             GridView4.FooterRow.Cells[0].Text = "Total";

             value = rdr.GetValue(rdr.GetOrdinal("paid"));
            total = value.ToString();
            GridView3.FooterRow.Cells[1].Text = total;
            GridView4.FooterRow.Cells[1].Text = total;

            //value = rdr.GetValue(rdr.GetOrdinal("remaining"));
            //total = value.ToString();
            //GridView2.FooterRow.Cells[2].Text = total;

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
        int receipt_no = 0;
        string sql = "select max(receipt_no) as receipt_id from account_table_bina where school_id='" + school_id + "';";
        login_chk ck = new login_chk();
        SqlDataReader rdr = ck.connection_select(sql);
        if (rdr.HasRows)
        {
            rdr.Read();
            receipt_no = int.Parse(rdr.GetValue(0).ToString());
            receipt_no++;
        }
        rdr.Close();
         sql = "select max(transaction_id) as last_id from account_table_bina;";
    //   ck=new login_chk();
        rdr = ck.connection_select(sql);
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
                   sql = "INSERT INTO account_table_bina VALUES ('" + transactionno + "', '" + strollno + "', '" + message + "', 0, '" + dob + "'," + amount + ", 'Direct', '" + date_int + "','" + school_id + "','" + receipt_no.ToString() + "')";


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
        int receipt_no = 0;
        string sql = "select max(receipt_no) as receipt_id from account_table_bina where school_id='" + school_id + "';";
        login_chk ck = new login_chk();
        SqlDataReader rdr = ck.connection_select(sql);
        if (rdr.HasRows)
        {
            rdr.Read();
            receipt_no =int.Parse(rdr.GetValue(0).ToString());
            receipt_no++;
        }
        rdr.Close();
         sql = "select max(transaction_id) as last_id from account_table_bina;";
       // login_chk ck = new login_chk();
         rdr = ck.connection_select(sql);
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
                    sql = "INSERT INTO account_table_bina VALUES ('" + transactionno + "', '" + strollno + "', '" + pre_message + "', 0, '" + dob + "'," + amount + ", '" + message + "', '" + date_int + "','" + school_id + "','" + receipt_no.ToString() + "')";


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
        Response.Redirect("bina_school_admin.aspx");
    }
    protected void Buttonfind_Click(object sender, EventArgs e)
    {
        st_rollno = TextBox22.Text;
        string dof = TextBox25.Text;
        string strQuery = "SELECT st_rollno, st_firname, st_mother, st_father, dob, st_father_mobile, class_id, section_id, school_id FROM st_bina_dataset WHERE (st_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
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
            school_id = rdr.GetString(8);
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

        strQuery = "SELECT SUM(amount) AS Total, SUM(debit_amount) AS Paid, SUM(amount) - SUM(debit_amount) AS Remaining, amt_message, MIN(dob_int) AS dob FROM account_table_bina WHERE (st_rollno = '" + st_rollno + "') GROUP BY amt_message ORDER BY dob";//'class_id = '" + class_id + "')";
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView2.DataSource = GetData(cmd);
        GridView2.DataBind();
        GridView2.Visible = true;
        GridView1.Visible = false;
        panel1.Visible = true;

        GridView3.Visible = false;
        panel2.Visible = false;
        object value;
        string total;
        //Calculate Sum and display in Footer Row
        //  decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Price"));
        strQuery = "SELECT SUM(amount) as total, SUM(debit_amount) as paid, SUM(amount) - SUM(debit_amount) as remaining FROM account_table_bina WHERE (st_rollno = '" + st_rollno + "')";
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
    protected void Button77_Click1(object sender, EventArgs e)
    {
        panel1.Visible = true;
        login_chk ck = new login_chk();
        Session["ctrl"] = panel2;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Control ctrl = (Control)Session["ctrl"];
        ck.PrintWebControl(ctrl);
    }
}
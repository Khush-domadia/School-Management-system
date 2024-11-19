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

public partial class library_issue_submit : System.Web.UI.Page
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

        string user_id = Session["user_id"].ToString();
        string pass_id = Session["pwrd"].ToString();

        bool done = true;//lc.admin_login_chk(user_id, pass_id);
        if (done == false)
        {
            Response.Redirect("slogin.aspx");

        }
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
    //protected void Button4_Click(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(strConnString);
    //    string strQuery;
    //    //string st_rollno = Label1.Text;
    //    //string exam_type = DropDownList5.SelectedItem.ToString();
    //    string sub_id;
    //    int marks;

    //    //cmd.CommandText = ;
    //    con.Open();

    //    cmd.Connection = con;
    //    strQuery = "select * from st_final_result where st_rollno='" + st_rollno + "' and exam_type='" + exam_type + "'";//'class_id = '" + class_id + "')";
    //    cmd.CommandText = strQuery;

    //    SqlDataReader rdr = cmd.ExecuteReader();

    //    if (!rdr.HasRows)
    //    {
    //        rdr.Close();
    //        for (int i = 1; i < y; i++)
    //        {
    //            if (i == 1)
    //            {
    //                sub_id = Label10.Text;
    //                marks = int.Parse(TextBox1.Text);
    //            }
    //            else if (i == 2)
    //            {
    //                sub_id = Label11.Text;
    //                marks = int.Parse(TextBox2.Text);
    //            }
    //            else if (i == 3)
    //            {
    //                sub_id = Label12.Text;
    //                marks = int.Parse(TextBox3.Text);
    //            }
    //            else if (i == 4)
    //            {
    //                sub_id = Label13.Text;
    //                marks = int.Parse(TextBox4.Text);
    //            }
    //            else if (i == 5)
    //            {
    //                sub_id = Label14.Text;
    //                marks = int.Parse(TextBox5.Text);
    //            }
    //            else if (i == 6)
    //            {
    //                sub_id = Label15.Text;
    //                marks = int.Parse(TextBox6.Text);
    //            }
    //            else
    //            {
    //                sub_id = Label16.Text;
    //                marks = int.Parse(TextBox7.Text);
    //            }
    //            strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_type + "'," + marks + ")";//'class_id = '" + class_id + "')";
    //            cmd.CommandText = strQuery;

    //            cmd.CommandText = strQuery;

    //            cmd.ExecuteNonQuery();
    //        }
    //    }
    //    else
    //    {
    //        rdr.Close();
    //        ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Data Was Already Present')", true);

    //    }
    //    con.Close();
    //}
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
    //protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string examp_type = DropDownList5.SelectedItem.ToString();
    //    if (examp_type.Equals("Term 1"))
    //    {
    //        for (int i = 1; i < y; i++)
    //        {

    //            TextBox txt = FindControl("TextBox" + i) as TextBox;

    //            txt.Visible = true;


    //            Label lbl = FindControl("Label" + (16 + i)) as Label;

    //            lbl.Visible = false;
    //        }


    //        for (int i = 1; i < y; i++)
    //        {

    //            TextBox txt = FindControl("TextBox" + (7 + i)) as TextBox;

    //            txt.Visible = false;


    //            Label lbl = FindControl("Label" + (23 + i)) as Label;

    //            lbl.Visible = true;
    //        }

    //    }
    //    else if (examp_type.Equals("Term 2"))
    //    {
    //        for (int i = 1; i < y; i++)
    //        {

    //            TextBox txt = FindControl("TextBox" + i) as TextBox;

    //            txt.Visible = false;


    //            Label lbl = FindControl("Label" + (16 + i)) as Label;

    //            lbl.Visible = true;
    //        }


    //        for (int i = 1; i < y; i++)
    //        {

    //            TextBox txt = FindControl("TextBox" + (7 + i)) as TextBox;

    //            txt.Visible = true;


    //            Label lbl = FindControl("Label" + (23 + i)) as Label;

    //            lbl.Visible = false;
    //        }

    //    }
    //}
    //protected void Button5_Click(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(strConnString);
    //    string strQuery;
    //    //string st_rollno = Label1.Text;
    //    //string exam_type = DropDownList5.SelectedItem.ToString();
    //    string sub_id;
    //    int marks;

    //    //cmd.CommandText = ;
    //    con.Open();

    //    cmd.Connection = con;
    //    strQuery = "select * from st_final_result where st_rollno='" + st_rollno + "' and exam_type='" + exam_type + "'";//'class_id = '" + class_id + "')";
    //    cmd.CommandText = strQuery;

    //    SqlDataReader rdr = cmd.ExecuteReader();

    //    if (!rdr.HasRows)
    //    {
    //        rdr.Close();
    //        for (int i = 1; i < y; i++)
    //        {
    //            Label lbl = FindControl("Label" + (9 + i)) as Label;
    //            TextBox txt = FindControl("TextBox" + (7 + i)) as TextBox;

    //            sub_id = lbl.Text;

    //            marks = int.Parse(txt.Text);

    //            strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_type + "'," + marks + ")";//'class_id = '" + class_id + "')";
    //            cmd.CommandText = strQuery;

    //            cmd.CommandText = strQuery;

    //            cmd.ExecuteNonQuery();

    //            // for SA1 totaling
    //            // Label term1lbl = FindControl("Label" + (16 + i)) as Label;
    //            // string exam_t = "SA1";
    //            // marks = (int.Parse(txt.Text) +int.Parse(term1lbl.Text))/2;

    //            // strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_t + "'," + marks + ")";//'class_id = '" + class_id + "')";
    //            //cmd.CommandText = strQuery;

    //            //cmd.CommandText = strQuery;

    //            //cmd.ExecuteNonQuery();
    //        }
    //    }
    //    else
    //    {
    //        rdr.Close();
    //        ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Data Was Already Present')", true);

    //    }
    //    con.Close();
    //}
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

    protected void DeleteCustomer(object sender, EventArgs e)
    {
       // string Company = ((TextBox)GridView1.FooterRow.FindControl("txtCompany")).Text; 
        LinkButton lnkRemove = (LinkButton)sender;
       
         string sql = "select max(lib_transacion) as last_id from st_library_issue_submit;";
       login_chk ck=new login_chk();
       SqlDataReader rdr = ck.connection_select(sql);
       int book_transaction;
       if (rdr.HasRows)
       {
           rdr.Read();
           book_transaction = int.Parse(rdr.GetValue(0).ToString());
           book_transaction++;


           string dob = DateTime.Now.ToString("yyyy-MM-dd");
        
           int book_id =int.Parse(lnkRemove.CommandArgument.ToString());
           
         
           int days= ck.find_total_days(st_rollno,book_id);
         
           int fine = 0;
         
           if (days > 30)
           {
             fine = (days - 30) * 2;
         
           }
        
           sql = "update st_library_issue_submit SET submit_date='" + dob + "', fine='" + fine + "' where st_rollno='" + st_rollno + "' and book_id = '" + book_id + "';";
       
           bool done=ck.connection_insert(sql);
           
           if(done.Equals(true))
           {
               sql = "UPDATE st_library SET book_status = 'Present' WHERE (book_id = '" + book_id + "');";

               done = ck.connection_insert(sql);
      
               if(done.Equals(true))
               {
                   ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Book is Issue')", true);
                BindData();
               }
            
           }
           else
           {
             ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Book is not Issue')", true);

           
           }
       }
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        BindData();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    private void BindData()
    {
        string strQuery;


        strQuery = "SELECT st_library_issue_submit.issue_date, st_library.book_id, st_library.book_name, st_library.book_author, st_library.book_publication, st_library.book_edition, st_library.book_price, st_library.book_subject, st_library.dob, st_library.user_id, st_library.book_status FROM st_library INNER JOIN st_library_issue_submit ON st_library.book_id = st_library_issue_submit.book_id AND st_library_issue_submit.st_rollno = '" + st_rollno + "' AND st_library_issue_submit.submit_date = 'null'";
       
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();

    }
}
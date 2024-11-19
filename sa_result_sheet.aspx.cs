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

public partial class sa_result_sheet : System.Web.UI.Page
{
    static int y,st_min, st_max, st_current;
    string[] st_rollno= new string[100];
    private String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
   SqlCommand cmd = new SqlCommand();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        login_chk lc = new login_chk();

        string user_id = Session["user_id"].ToString();
        string pass_id = Session["pwrd"].ToString();

        bool done=true;// = lc.admin_login_chk(user_id, pass_id);
        if (done == false)
        {
            Response.Redirect("slogin.aspx");

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
           string section_id = DropDownList6.SelectedItem.ToString();
        string class_id = DropDownList4.SelectedValue.ToString();

        string strQuery = "SELECT st_rollno, st_name, st_mother_name, st_father_name, dob, class_id, section_id FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
         SqlConnection con = new SqlConnection(strConnString);
         for (int ij = 1; ij <= 42; ij++)
         {


             Label lblmarks = FindControl("Label" + (9 + ij)) as Label;
             lblmarks.Text = "";// (string)rrdr["marks"].ToString();
             lblmarks.Visible = false;// (string)rrdr["marks"].ToString();
         } 
        
        for (int ij = 1; ij <= 21; ij++)
         {


            // Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
             TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

             //lblmarks.Text = "";// (string)rrdr["marks"].ToString();
             txt.Text = "";// (string)rrdr["marks"].ToString();
             //Label10.Visible = true;

            // lblmarks.Visible = false;// (string)rrdr["marks"].ToString();
             txt.Visible = false;


         }
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
                    //int temp=1;
                    //while (rdr.Read())
                    //{
                    //    st_rollno[temp] = rdr.GetString(0);
                    //}
                }
                rdr.Close();
        // Fill subjects name

                strQuery = "select *" +
                                   " from st_final_subject WHERE (class_id = '" + class_id + "')";
      
        cmd.Connection = con;
        cmd.CommandText = strQuery;

        //cmd.CommandText = ;
        //con.Open();
        SqlDataReader rrdr = cmd.ExecuteReader();
        for (int ij = 1; ij <= 14; ij++)
        {

          
                Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
                TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                lblmarks.Text ="";// (string)rrdr["marks"].ToString();
                txt.Text ="";// (string)rrdr["marks"].ToString();
                //Label10.Visible = true;
              
            

        }
       y = 1;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_name"];
            //sub_name[y] = subject;
            if (y == 1)
            {
                Label10.Text = subject;
                Label10.Visible = true;
            }
            else if (y == 2)
            {
                Label11.Text = subject;
                Label11.Visible = true;
            }
            else if (y == 3)
            {
                Label12.Text = subject;
                Label12.Visible = true;
            }
            else if (y == 4)
            {
                Label13.Text = subject;
                Label13.Visible = true;
            }
            else if (y == 5)
            {
                Label14.Text = subject;
                Label14.Visible = true;
            }
            else if (y == 6)
            {
                Label15.Text = subject;
                Label15.Visible = true;
            }
            else
                 {
                Label16.Text = subject;
                Label16.Visible = true;
            }
            y++;
        }
        //for marks filling
        rrdr.Close();
        strQuery = "select *" +
                                   " from st_final_result WHERE (st_rollno = '" + Label1.Text + "')";
      
        cmd.Connection = con;
        cmd.CommandText = strQuery;

        //cmd.CommandText = ;
        //con.Open();
         rrdr = cmd.ExecuteReader();
        
       //y = 1;
         int total = 0;
       while (rrdr.Read())
       {
           // get the results of each column
           string subject = (string)rrdr["sub_id"];
           string exam_type = (string)rrdr["exam_type"];
          
           // for term 1
           if (exam_type.Equals("Term 1"))
           {
               for (int ij = 1; ij <= 7; ij++)
               {

                   Label lbl = FindControl("Label" + (9 + ij)) as Label;

                   if (subject.Equals(lbl.Text))
                   {
                       Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
                       TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                       lblmarks.Visible = true;
                       //txt.Visible = true;
                       lblmarks.Text = (string)rrdr["marks"].ToString();
                       txt.Text = (string)rrdr["marks"].ToString();
                       //Label10.Visible = true;
                       break;
                   }

               }
           }
           // for term 2
           if (exam_type.Equals("Term 2"))
           {
               total = 1;
               for (int ij = 1; ij <= 7; ij++)
               {

                   Label lbl = FindControl("Label" + (9 + ij)) as Label;

                   if (subject.Equals(lbl.Text))
                   {
                       Label lblmarks = FindControl("Label" + (23 + ij)) as Label;
                       TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;
                       lblmarks.Visible = true;
                       lblmarks.Text = (string)rrdr["marks"].ToString();
                       txt.Text = (string)rrdr["marks"].ToString();
                       //Label10.Visible = true;

                       // for Total of Term1+term2
                       Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                       // string exam_t = "SA1";
                      // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                       int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text)) / 2;
                       Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                       total_lbl.Text = marks.ToString();
                       total_lbl.Visible = true;
                       break;
                   }

               }
           }
       }
       if (total == 0)
       {

           for (int ij = 1; ij <= 7; ij++)
           {
               Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

               //total_lbl.Text = marks.ToString();
               total_lbl.Visible = false;

           }


       }
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery;
        string st_rollno = Label1.Text;
        string exam_type = DropDownList5.SelectedItem.ToString();
        string sub_id;
        int marks;

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
         strQuery = "select * from st_final_result where st_rollno='" + st_rollno + "' and exam_type='" + exam_type + "'";//'class_id = '" + class_id + "')";
                cmd.CommandText = strQuery;

                SqlDataReader rdr = cmd.ExecuteReader();

                if (!rdr.HasRows)
                {
                    rdr.Close();
                    for (int i = 1; i < y; i++)
                    {
                        if (i == 1)
                        {
                            sub_id = Label10.Text;
                            marks = int.Parse(TextBox1.Text);
                        }
                        else if (i == 2)
                        {
                            sub_id = Label11.Text;
                            marks = int.Parse(TextBox2.Text);
                        }
                        else if (i == 3)
                        {
                            sub_id = Label12.Text;
                            marks = int.Parse(TextBox3.Text);
                        }
                        else if (i == 4)
                        {
                            sub_id = Label13.Text;
                            marks = int.Parse(TextBox4.Text);
                        }
                        else if (i == 5)
                        {
                            sub_id = Label14.Text;
                            marks = int.Parse(TextBox5.Text);
                        }
                        else if (i == 6)
                        {
                            sub_id = Label15.Text;
                            marks = int.Parse(TextBox6.Text);
                        }
                        else
                        {
                            sub_id = Label16.Text;
                            marks = int.Parse(TextBox7.Text);
                        }
                        strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_type + "'," + marks + ")";//'class_id = '" + class_id + "')";
                        cmd.CommandText = strQuery;

                        cmd.CommandText = strQuery;

                        cmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    rdr.Close();
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Data Was Already Present')", true);
    
                }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string section_id = DropDownList6.SelectedItem.ToString();
        string class_id = DropDownList4.SelectedValue.ToString();

        string strQuery = "SELECT st_rollno, st_name, st_mother_name, st_father_name, dob, class_id, section_id FROM st_final_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();
        st_current = st_current+1;
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
            }
        }
        rdr.Close();
        //for marks filling
       // rrdr.Close();
        strQuery = "select *" +
                                   " from st_final_result WHERE (st_rollno = '" + Label1.Text + "')";

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        //cmd.CommandText = ;
        //con.Open();
        SqlDataReader rrdr = cmd.ExecuteReader();
        for (int ij = 1; ij <= 14; ij++)
        {


            Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
            TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

            lblmarks.Text = "";// (string)rrdr["marks"].ToString();
            txt.Text = "";// (string)rrdr["marks"].ToString();
            //Label10.Visible = true;



        }
        //y = 1;
        int total = 0;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_id"];
            string exam_type = (string)rrdr["exam_type"];
            //sub_name[y] = subject;
            // for term 1
            if (exam_type.Equals("Term 1"))
            {
                for (int ij = 1; ij <= 7; ij++)
                {

                    Label lbl = FindControl("Label" + (9 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
                        TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;
                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text)) / 2;
                        Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        total_lbl.Text = marks.ToString();
                        total_lbl.Visible = true; 
                        break;
                    }

                }
            }
            // for term 2
            if (exam_type.Equals("Term 2"))
            {
                total = 1;
                for (int ij = 1; ij <= 7; ij++)
                {

                    Label lbl = FindControl("Label" + (9 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (23 + ij)) as Label;
                        TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;

                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;
                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text)) / 2;
                        Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        total_lbl.Text = marks.ToString();
                        total_lbl.Visible = true;
                        break;
                    }

                }
            }


        }
        if (total == 0)
        {

            for (int ij = 1; ij <= 7; ij++)
            {
                Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                //total_lbl.Text = marks.ToString();
                total_lbl.Visible = false;

            }


        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string section_id = DropDownList6.SelectedItem.ToString();
        string class_id = DropDownList4.SelectedValue.ToString();

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
                    temp++;
                }
            }
        }
        rdr.Close();
        strQuery = "select *" +
                                " from st_final_result WHERE (st_rollno = '" + Label1.Text + "')";

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        //cmd.CommandText = ;
        //con.Open();
        SqlDataReader rrdr = cmd.ExecuteReader();
        for (int ij = 1; ij <= 14; ij++)
        {


            Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
            TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

            lblmarks.Text = "";// (string)rrdr["marks"].ToString();
            txt.Text = "";// (string)rrdr["marks"].ToString();
            //Label10.Visible = true;



        }
        //y = 1;
        int total=0;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_id"];
            string exam_type = (string)rrdr["exam_type"];
            //sub_name[y] = subject;
            // for term 1
            if (exam_type.Equals("Term 1"))
            {
                for (int ij = 1; ij <= 7; ij++)
                {

                    Label lbl = FindControl("Label" + (9 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
                        TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;
                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text)) / 2;
                        Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        total_lbl.Text = marks.ToString();
                        total_lbl.Visible = true;
                        break;
                    }

                }
            }
            // for term 2
            if (exam_type.Equals("Term 2"))
            {
                total = 1;
                for (int ij = 1; ij <= 7; ij++)
                {

                    Label lbl = FindControl("Label" + (9 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (23 + ij)) as Label;
                        TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;

                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;
                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text)) / 2;
                        Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        total_lbl.Text = marks.ToString();
                        total_lbl.Visible = true;
                        break;
                    }

                }
            }



        }
        if (total == 0)
        {

            for (int ij = 1; ij <= 7; ij++)
            {
                Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                //total_lbl.Text = marks.ToString();
                total_lbl.Visible = false;

            }
        
        
        }
        con.Close();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        string examp_type=DropDownList5.SelectedItem.ToString();
        if (examp_type.Equals("FA 1"))
        { 
            for(int i=1;i<y;i++)
            {
            
            TextBox txt= FindControl("TextBox"+i) as TextBox;
            
                txt.Visible=true;

                
            Label lbl= FindControl("Label"+(16+i)) as Label;
            
                lbl.Visible=false;
            }


            for (int i = 1; i < y; i++)
            {

                TextBox txt = FindControl("TextBox" + (7+i)) as TextBox;

                txt.Visible = false;


                Label lbl = FindControl("Label" + (23 + i)) as Label;

                lbl.Visible = true;
            }
        
        }
        else if (examp_type.Equals("FA 2"))
        {
            for (int i = 1; i < y; i++)
            {

                TextBox txt = FindControl("TextBox" + i) as TextBox;

                txt.Visible = false;


                Label lbl = FindControl("Label" + (16 + i)) as Label;

                lbl.Visible = true;
            }


            for (int i = 1; i < y; i++)
            {

                TextBox txt = FindControl("TextBox" + (7 + i)) as TextBox;

                txt.Visible = true;


                Label lbl = FindControl("Label" + (23 + i)) as Label;

                lbl.Visible = false;
            }

        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery;
        string st_rollno = Label1.Text;
        string exam_type = DropDownList5.SelectedItem.ToString();
        string sub_id;
        int marks;

        //cmd.CommandText = ;
        con.Open();

        cmd.Connection = con;
        strQuery = "select * from st_final_result where st_rollno='" + st_rollno + "' and exam_type='" + exam_type + "'";//'class_id = '" + class_id + "')";
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (!rdr.HasRows)
        {
            rdr.Close();
            for (int i = 1; i < y; i++)
            {
                Label lbl = FindControl("Label" + (9 + i)) as Label;
                TextBox txt = FindControl("TextBox" + (7 + i)) as TextBox;

                sub_id = lbl.Text;

                marks = int.Parse(txt.Text);
             
              strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_type + "'," + marks + ")";//'class_id = '" + class_id + "')";
                cmd.CommandText = strQuery;

                cmd.CommandText = strQuery;

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Marks Added Succesfully')", true);

                // for SA1 totaling
                // Label term1lbl = FindControl("Label" + (16 + i)) as Label;
                // string exam_t = "SA1";
                // marks = (int.Parse(txt.Text) +int.Parse(term1lbl.Text))/2;

                // strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_t + "'," + marks + ")";//'class_id = '" + class_id + "')";
                //cmd.CommandText = strQuery;

                //cmd.CommandText = strQuery;

                //cmd.ExecuteNonQuery();
            }
        }
        else
        {
            rdr.Close();
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Data Was Already Present')", true);

        }
        con.Close();
    }
}
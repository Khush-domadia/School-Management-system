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

public partial class sa_result_sheet_new : System.Web.UI.Page
{

    static int y, st_min, st_max, st_current, maxmarks=0;
    string[] st_rollno= new string[100];
    private String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
   SqlCommand cmd = new SqlCommand();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        login_chk lc = new login_chk();

        //try
        //{
        //    string user_id = Session["user_id"].ToString();
        //    string pass_id = Session["pwrd"].ToString();

        //    bool done = lc.admin_login_chk(user_id, pass_id, "staff_result");
        //    if (done == false)
        //    {
        //        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Permission Not Granted');", true);

        //        Response.Redirect("main_menu.aspx");

        //    }
        //}
        //catch (Exception ex)
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Session Expired. Kindly Login Again');", true);
        //    Response.Redirect("slogin.aspx");

        //}
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        find_result();
        show_results();
    }
    private void find_roll_result(string st_rollno)
    {
         string class_id = "";// = DropDownList4.SelectedItem.ToString();
        string section_id = "";
        string strQuery = "SELECT * FROM st_ramayana_dataset WHERE (st_rollno = '" + st_rollno + "')";//'class_id = '" + class_id + "')";
      
               SqlConnection con = new SqlConnection(strConnString);
        for (int ij = 1; ij <= 11; ij++)
        {


            Label lblmarks = FindControl("Label" + (309 + ij)) as Label;
            lblmarks.Text = "";// (string)rrdr["marks"].ToString();
            lblmarks.Visible = true;// (string)rrdr["marks"].ToString();
        }
        for (int ij = 1; ij <= 11; ij++)
        {
        TextBox txt = FindControl("TextBox" + (22 + ij)) as TextBox;

                        // lblmarks.Visible = true;
                        txt.Visible = false;
                        //lblmarks.Text = (string)rrdr["marks"].ToString();
                        txt.Text = ""; 
        }


        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

           // st_current = 1;
            Label1.Text = rdr.GetString(0);
            Label2.Text = rdr.GetString(3) + " " + rdr.GetString(4) + " " + rdr.GetString(5);
            Label5.Text = rdr.GetString(6);
            Label3.Text = rdr.GetString(10);
            Label4.Text = rdr.GetString(9);
            
           
            class_id = rdr.GetString(1);
            section_id = rdr.GetString(20);
            Label8.Text = section_id;
            Label7.Text = class_id;// DropDownList4.SelectedItem.ToString();

           

        }
        rdr.Close();
        // Fill subjects name

        strQuery = "select *" +
                           " from st_final_subject WHERE (class_id = '" + class_id + "' and sub_status='1') ORDER BY sub_min_marks";

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        //cmd.CommandText = ;
        //con.Open();
        SqlDataReader rrdr = cmd.ExecuteReader();
         maxmarks = 0;
              
        y = 1;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_name"];

            Label lbl = FindControl("Label" + (309 + y)) as Label;
            lbl.Text = subject;
            lbl.Visible = true;

            Label lbl2 = FindControl("Label" + (437 + y)) as Label;
            lbl2.Text = subject;
            lbl2.Visible = true;
            maxmarks = maxmarks+int.Parse(rrdr["sub_max_marks"].ToString());

            TextBox txt = FindControl("TextBox" + (22 + y)) as TextBox;
            txt.Visible = true;
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
        string attendence = "";
        string remarks = "";

        string regular = "";
        string clean = "";
        string discipline = "";
        string manner = "";

        string recitation = "";
        string dance = "";
        string craft = "";
        string drawing = "";
        string other_activity = "";
        string teacher = "";
        string mates = "";
        //y = 1;
        int total = 0;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_id"];
            string exam_type = (string)rrdr["exam_type"];

            // for term 1
            if (exam_type.Equals("First Term"))
            {
                
                int percentage;
                int totalmarks = 0;

                for (int ij = 1; ij <= y; ij++)
                {

                    Label lbl = FindControl("Label" + (309 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (216 + ij)) as Label;
                        // TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        lblmarks.Visible = true;
                        //txt.Visible = true;
                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        // txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;
                        totalmarks = totalmarks + int.Parse(lblmarks.Text);
                      //  maxmarks=maxmarks+
                        attendence = (string)rrdr["attendence"].ToString();
                        remarks = (string)rrdr["remarks"].ToString();

                        regular = (string)rrdr["regular"].ToString();
                        clean = (string)rrdr["clean"].ToString();

                        discipline = (string)rrdr["discipline"].ToString();
                        manner = (string)rrdr["manner"].ToString();


                        //--------
                        recitation = (string)rrdr["recitation"].ToString();
                        dance = (string)rrdr["dance"].ToString();

                        craft = (string)rrdr["craft"].ToString();
                        drawing = (string)rrdr["drawing"].ToString();

                        other_activity = (string)rrdr["other_activity"].ToString();
                        teacher = (string)rrdr["teacher"].ToString();

                        mates = (string)rrdr["mates"].ToString();
                        
                        break;
                    }

                }
                Label6.Text = recitation;
                Label70.Text = dance;
                Label73.Text = craft;
                Label76.Text = drawing;
                Label79.Text = other_activity;

                Label82.Text = teacher;
                Label85.Text = mates;

                Label57.Text = regular;
                Label60.Text = clean;
                Label63.Text = discipline;
                Label66.Text = manner;


                Label51.Text = attendence;
                Label54.Text = remarks;
                percentage=(totalmarks/maxmarks)*100;
                Label45.Text = percentage.ToString();
                string grade;
                if (percentage>=96)
                    grade="A*";
                else if (percentage>=85 && percentage<=95)
                    grade="A";
                else if (percentage>=75 && percentage<=84)
                    grade="B*";
                else if (percentage>65 && percentage<=74)
                    grade="B";
                else
                grade ="C";

                Label46.Text = grade;
            }
            // for term 2
            if (exam_type.Equals("Second Term"))
            {
                int percentage;
                int totalmarks = 0;
                for (int ij = 1; ij <= y; ij++)
                {

                    Label lbl = FindControl("Label" + (309 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (243 + ij)) as Label;
                        //TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;
                        //lblmarks.Visible = true;
                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        // txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;

                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        //int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text));
                        //Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        //total_lbl.Text = marks.ToString();
                        //total_lbl.Visible = true;
                        totalmarks = totalmarks + int.Parse(lblmarks.Text);
                        //  maxmarks=maxmarks+
                        attendence = (string)rrdr["attendence"].ToString();
                        remarks = (string)rrdr["remarks"].ToString();
                        regular = (string)rrdr["regular"].ToString();
                        clean = (string)rrdr["clean"].ToString();

                        discipline = (string)rrdr["discipline"].ToString();
                        manner = (string)rrdr["manner"].ToString();


                        //--------
                        recitation = (string)rrdr["recitation"].ToString();
                        dance = (string)rrdr["dance"].ToString();

                        craft = (string)rrdr["craft"].ToString();
                        drawing = (string)rrdr["drawing"].ToString();

                        other_activity = (string)rrdr["other_activity"].ToString();
                        teacher = (string)rrdr["teacher"].ToString();

                        mates = (string)rrdr["mates"].ToString();

                        break;
                    }

                }
                Label9.Text = recitation;
                Label71.Text = dance;
                Label74.Text = craft;
                Label77.Text = drawing;
                Label80.Text = other_activity;

                Label83.Text = teacher;
                Label86.Text = mates;

                Label58.Text = regular;
                Label61.Text = clean;
                Label64.Text = discipline;
                Label67.Text = manner;

                Label52.Text = attendence;
                Label55.Text = remarks;
                percentage = (totalmarks / maxmarks) * 100;
                Label47.Text = percentage.ToString();
                string grade;
                if (percentage >= 96)
                    grade = "A*";
                else if (percentage >= 85 && percentage <= 95)
                    grade = "A";
                else if (percentage >= 75 && percentage <= 84)
                    grade = "B*";
                else if (percentage > 65 && percentage <= 74)
                    grade = "B";
                else
                    grade = "C";

                Label49.Text = grade;
            }
            // for term 2
            if (exam_type.Equals("Third Term"))
            {
                int percentage;
                int totalmarks = 0;
                for (int ij = 1; ij <= y; ij++)
                {

                    Label lbl = FindControl("Label" + (309 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (270 + ij)) as Label;
                        //TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;
                        //lblmarks.Visible = true;
                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        // txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;

                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (216 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        //int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text));
                        //Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        //total_lbl.Text = marks.ToString();
                        //total_lbl.Visible = true;
                        totalmarks = totalmarks + int.Parse(lblmarks.Text);
                        //  maxmarks=maxmarks+
                        attendence = (string)rrdr["attendence"].ToString();
                        remarks = (string)rrdr["remarks"].ToString();
                        
                        regular = (string)rrdr["regular"].ToString();
                        clean = (string)rrdr["clean"].ToString();

                        discipline = (string)rrdr["discipline"].ToString();
                        manner = (string)rrdr["manner"].ToString();

                        //--------
                        recitation = (string)rrdr["recitation"].ToString();
                        dance = (string)rrdr["dance"].ToString();

                        craft = (string)rrdr["craft"].ToString();
                        drawing = (string)rrdr["drawing"].ToString();

                        other_activity = (string)rrdr["other_activity"].ToString();
                        teacher = (string)rrdr["teacher"].ToString();

                        mates = (string)rrdr["mates"].ToString();

                        break;
                    }

                }
                Label69.Text = recitation;
                Label72.Text = dance;
                Label75.Text = craft;
                Label78.Text = drawing;
                Label81.Text = other_activity;

                Label84.Text = teacher;
                Label87.Text = mates;

                Label59.Text = regular;
                Label62.Text = clean;
                Label65.Text = discipline;
                Label68.Text = manner;

                Label53.Text = attendence;
                Label56.Text = remarks;
                percentage = (totalmarks / maxmarks) * 100;
                Label48.Text = percentage.ToString();
                string grade;
                if (percentage >= 96)
                    grade = "A*";
                else if (percentage >= 85 && percentage <= 95)
                    grade = "A";
                else if (percentage >= 75 && percentage <= 84)
                    grade = "B*";
                else if (percentage > 65 && percentage <= 74)
                    grade = "B";
                else
                    grade = "C";

                Label50.Text = grade;
            }
        }
        
        con.Close();
       // show_results();
    }
    private void show_results()
    {
        float percentage = 0, totalmarks = 0;
        string grade;
        for (int i = 1; i <= 6; i++)
        {
            Label lblmarks = FindControl("Label" + (44 + i)) as Label;

            lblmarks.Text = "";
        }
        for (int i = 1; i <= y; i++)
        {
            Label lblmarks = FindControl("Label" + (216 + i)) as Label;
            if (lblmarks.Text.Length >= 1)
            {
               totalmarks=totalmarks+ int.Parse(lblmarks.Text);
            }
        
        }
        Label lblmarks2 = FindControl("Label" + (217)) as Label;
            if (lblmarks2.Text.Length >= 1)
            {
            percentage = (totalmarks / maxmarks) * 100;
        Label45.Text = percentage.ToString();
        
        if (percentage >= 96)
            grade = "A*";
        else if (percentage >= 85 && percentage <= 95)
            grade = "A";
        else if (percentage >= 75 && percentage <= 84)
            grade = "B*";
        else if (percentage > 65 && percentage <= 74)
            grade = "B";
        else
            grade = "C";

        Label46.Text = grade;
            }
         percentage = 0; totalmarks = 0;

        for (int i = 1; i <= 7; i++)
        {
            Label lblmarks = FindControl("Label" + (243 + i)) as Label;
            if (lblmarks.Text.Length >= 1)
            {
               totalmarks=totalmarks+ int.Parse(lblmarks.Text);
            }
        
        }
        Label lblmarks3 = FindControl("Label" + (244)) as Label;
            if (lblmarks3.Text.Length >= 1)
            {
            percentage = (totalmarks / maxmarks) * 100;
        Label47.Text = percentage.ToString();
       // string grade;
        if (percentage >= 96)
            grade = "A*";
        else if (percentage >= 85 && percentage <= 95)
            grade = "A";
        else if (percentage >= 75 && percentage <= 84)
            grade = "B*";
        else if (percentage > 65 && percentage <= 74)
            grade = "B";
        else
            grade = "C";

        Label49.Text = grade;
            }
            percentage = 0;  totalmarks = 0;

        for (int i = 1; i <= y; i++)
        {
            Label lblmarks = FindControl("Label" + (270 + i)) as Label;
            if (lblmarks.Text.Length >= 1)
            {
               totalmarks=totalmarks+ int.Parse(lblmarks.Text);
            }
        
        }
        Label lblmarks4 = FindControl("Label" + (271)) as Label;
        if (lblmarks4.Text.Length >= 1)
        {
            percentage = (totalmarks / maxmarks) * 100;
            Label48.Text = percentage.ToString();
           // grade;
            if (percentage >= 96)
                grade = "A*";
            else if (percentage >= 85 && percentage <= 95)
                grade = "A";
            else if (percentage >= 75 && percentage <= 84)
                grade = "B*";
            else if (percentage > 65 && percentage <= 74)
                grade = "B";
            else
                grade = "C";

            Label50.Text = grade;
        }
    }
    private void find_result()
    {

        string section_id = DropDownList6.SelectedItem.ToString();
        string class_id = DropDownList4.SelectedItem.ToString();

        string strQuery = "SELECT * FROM st_ramayana_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        SqlConnection con = new SqlConnection(strConnString);
        for (int ij = 1; ij <= y; ij++)
        {


            Label lblmarks = FindControl("Label" + (309 + ij)) as Label;
            lblmarks.Text = "";// (string)rrdr["marks"].ToString();
            lblmarks.Visible = true;// (string)rrdr["marks"].ToString();
        }
        //for (int ij = 1; ij <= 11; ij++)
        //{
        //    TextBox txt = FindControl("TextBox" + (22 + ij)) as TextBox;

        //    // lblmarks.Visible = true;
        //    //txt.Visible = false;
        //    //lblmarks.Text = (string)rrdr["marks"].ToString();
        //    //txt.Text = "";
        //}


        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

            st_current = 1;
            Label1.Text = rdr.GetString(0);
            Label2.Text = rdr.GetString(3) + " " + rdr.GetString(4) + " " + rdr.GetString(5);
            Label5.Text = rdr.GetString(6);
            Label3.Text = rdr.GetString(10);
            Label4.Text = rdr.GetString(9);


            class_id = rdr.GetString(1);
            section_id = rdr.GetString(20);
            Label8.Text = section_id;
            Label7.Text = class_id;
           
        }
        rdr.Close();
        // Fill subjects name

        strQuery = "select *" +
                           " from st_final_subject WHERE (class_id = '" + class_id + "') ORDER BY sub_min_marks";

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        //cmd.CommandText = ;
        //con.Open();
        SqlDataReader rrdr = cmd.ExecuteReader();
        maxmarks=0;
        y = 1;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_name"];

            Label lbl = FindControl("Label" + (309 + y)) as Label;
            lbl.Text = subject;
            lbl.Visible = true;

            Label lbl2 = FindControl("Label" + (437 + y)) as Label;
            lbl2.Text = subject;
            lbl2.Visible = true;
           maxmarks=maxmarks+int.Parse(rrdr["sub_max_marks"].ToString());
            
            TextBox txt = FindControl("TextBox" + (22 + y)) as TextBox;
            txt.Visible = true;
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
        string attendence = "";
        string remarks = "";

        string regular = "";
        string clean = "";
        string discipline = "";
        string manner = "";
        string recitation = "";
        string dance = "";
        string craft = "";
        string drawing ="";
            string other_activity ="";
        string teacher ="";
        string mates="";
        //y = 1;
        int total = 0;
        while (rrdr.Read())
        {
            // get the results of each column
            string subject = (string)rrdr["sub_id"];
            string exam_type = (string)rrdr["exam_type"];

            // for term 1
            if (exam_type.Equals("First Term"))
            {

                int percentage;
                int totalmarks = 0;

                for (int ij = 1; ij <= y; ij++)
                {

                    Label lbl = FindControl("Label" + (309 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (216 + ij)) as Label;
                        // TextBox txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        // lblmarks.Visible = true;
                        //txt.Visible = true;
                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        // txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;
                        totalmarks = totalmarks + int.Parse(lblmarks.Text);
                        //  maxmarks=maxmarks+
                        attendence = (string)rrdr["attendence"].ToString();
                        remarks = (string)rrdr["remarks"].ToString();

                        regular = (string)rrdr["regular"].ToString();
                        clean = (string)rrdr["clean"].ToString();

                        discipline = (string)rrdr["discipline"].ToString();
                        manner = (string)rrdr["manner"].ToString();

                        //--------
                        recitation = (string)rrdr["recitation"].ToString();
                        dance = (string)rrdr["dance"].ToString();

                        craft = (string)rrdr["craft"].ToString();
                        drawing = (string)rrdr["drawing"].ToString();

                        other_activity = (string)rrdr["other_activity"].ToString();
                        teacher = (string)rrdr["teacher"].ToString();

                        mates = (string)rrdr["mates"].ToString();

                        break;
                    }

                }
                Label6.Text = recitation;
                Label70.Text = dance;
                Label73.Text = craft;
                Label76.Text = drawing;
                Label79.Text = other_activity;

                Label82.Text = teacher;
                Label85.Text = mates;

                Label57.Text = regular;
                Label60.Text = clean;
                Label63.Text = discipline;
                Label66.Text = manner;


                Label51.Text = attendence;
                Label54.Text = remarks;
                percentage = (totalmarks / maxmarks) * 100;
                Label45.Text = percentage.ToString();
                string grade;
                if (percentage >= 96)
                    grade = "A*";
                else if (percentage >= 85 && percentage <= 95)
                    grade = "A";
                else if (percentage >= 75 && percentage <= 84)
                    grade = "B*";
                else if (percentage > 65 && percentage <= 74)
                    grade = "B";
                else
                    grade = "C";

                Label46.Text = grade;
            }
            // for term 2
            if (exam_type.Equals("Second Term"))
            {
                int percentage;
                int totalmarks = 0;
                for (int ij = 1; ij <= y; ij++)
                {

                    Label lbl = FindControl("Label" + (309 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (243 + ij)) as Label;
                        //TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;
                        //lblmarks.Visible = true;
                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        // txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;

                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        //int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text));
                        //Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        //total_lbl.Text = marks.ToString();
                        //total_lbl.Visible = true;
                        totalmarks = totalmarks + int.Parse(lblmarks.Text);
                        //  maxmarks=maxmarks+
                        attendence = (string)rrdr["attendence"].ToString();
                        remarks = (string)rrdr["remarks"].ToString();
                        regular = (string)rrdr["regular"].ToString();
                        clean = (string)rrdr["clean"].ToString();

                        discipline = (string)rrdr["discipline"].ToString();
                        manner = (string)rrdr["manner"].ToString();
                        //--------
                        recitation = (string)rrdr["recitation"].ToString();
                        dance = (string)rrdr["dance"].ToString();

                        craft = (string)rrdr["craft"].ToString();
                        drawing = (string)rrdr["drawing"].ToString();

                        other_activity = (string)rrdr["other_activity"].ToString();
                        teacher = (string)rrdr["teacher"].ToString();

                        mates = (string)rrdr["mates"].ToString();

                        break;
                    }

                }
                Label9.Text = recitation;
                Label71.Text = dance;
                Label74.Text = craft;
                Label77.Text = drawing;
                Label80.Text = other_activity;

                Label83.Text = teacher;
                Label86.Text = mates;

                Label58.Text = regular;
                Label61.Text = clean;
                Label64.Text = discipline;
                Label67.Text = manner;

                Label52.Text = attendence;
                Label55.Text = remarks;
                percentage = (totalmarks / maxmarks) * 100;
                Label47.Text = percentage.ToString();
                string grade;
                if (percentage >= 96)
                    grade = "A*";
                else if (percentage >= 85 && percentage <= 95)
                    grade = "A";
                else if (percentage >= 75 && percentage <= 84)
                    grade = "B*";
                else if (percentage > 65 && percentage <= 74)
                    grade = "B";
                else
                    grade = "C";

                Label49.Text = grade;
            }
            // for term 2
            if (exam_type.Equals("Third Term"))
            {
                int percentage;
                int totalmarks = 0;
                for (int ij = 1; ij <= y; ij++)
                {

                    Label lbl = FindControl("Label" + (309 + ij)) as Label;

                    if (subject.Equals(lbl.Text))
                    {
                        Label lblmarks = FindControl("Label" + (270 + ij)) as Label;
                        //TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;
                        //lblmarks.Visible = true;
                        lblmarks.Text = (string)rrdr["marks"].ToString();
                        // txt.Text = (string)rrdr["marks"].ToString();
                        //Label10.Visible = true;

                        // for Total of Term1+term2
                        Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                        // string exam_t = "SA1";
                        // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                        //int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text));
                        //Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                        //total_lbl.Text = marks.ToString();
                        //total_lbl.Visible = true;
                        totalmarks = totalmarks + int.Parse(lblmarks.Text);
                        //  maxmarks=maxmarks+
                        attendence = (string)rrdr["attendence"].ToString();
                        remarks = (string)rrdr["remarks"].ToString();

                        regular = (string)rrdr["regular"].ToString();
                        clean = (string)rrdr["clean"].ToString();

                        discipline = (string)rrdr["discipline"].ToString();
                        manner = (string)rrdr["manner"].ToString();

                        //--------
                        recitation = (string)rrdr["recitation"].ToString();
                        dance = (string)rrdr["dance"].ToString();

                        craft = (string)rrdr["craft"].ToString();
                        drawing = (string)rrdr["drawing"].ToString();

                        other_activity = (string)rrdr["other_activity"].ToString();
                        teacher = (string)rrdr["teacher"].ToString();

                        mates = (string)rrdr["mates"].ToString();

                        break;
                    }

                }
                Label69.Text = recitation;
                Label72.Text = dance;
                Label75.Text = craft;
                Label78.Text = drawing;
                Label81.Text = other_activity;

                Label84.Text = teacher;
                Label87.Text = mates;

                Label59.Text = regular;
                Label62.Text = clean;
                Label65.Text = discipline;
                Label68.Text = manner;

                Label53.Text = attendence;
                Label56.Text = remarks;
                percentage = (totalmarks / maxmarks) * 100;
                Label48.Text = percentage.ToString();
                string grade;
                if (percentage >= 96)
                    grade = "A*";
                else if (percentage >= 85 && percentage <= 95)
                    grade = "A";
                else if (percentage >= 75 && percentage <= 84)
                    grade = "B*";
                else if (percentage > 65 && percentage <= 74)
                    grade = "B";
                else
                    grade = "C";

                Label50.Text = grade;
            }
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string class_id = "";// = DropDownList4.SelectedItem.ToString();
        string section_id = "";
        string strQuery = "SELECT * FROM st_ramayana_dataset WHERE (st_rollno = '" + Label1.Text + "')";//'class_id = '" + class_id + "')";

        SqlConnection con = new SqlConnection(strConnString);
        

        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();

           

            class_id = rdr.GetString(1);
            section_id = rdr.GetString(20);
          


        }
        rdr.Close();
      
        
     //   string section_id = DropDownList6.SelectedItem.ToString();
       // string class_id = DropDownList4.SelectedItem.ToString();

         strQuery = "SELECT * FROM st_ramayana_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
       // SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
       // con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

         rdr = cmd.ExecuteReader();
        st_current = st_current+1;
        int temp = 1;
        if (rdr.HasRows)
        {
            while (rdr.Read() && rdr.GetString(0).Equals(Label1.Text))
            {
                rdr.Read();
               // st_current = 1;
                Label1.Text = rdr.GetString(0);
                
                temp++;
            }
        }
        rdr.Close();
        //for marks filling
       // rrdr.Close();
        find_roll_result(Label1.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string class_id = "";// = DropDownList4.SelectedItem.ToString();
        string section_id = "";
        string strQuery = "SELECT * FROM st_ramayana_dataset WHERE (st_rollno = '" + Label1.Text + "')";//'class_id = '" + class_id + "')";

        SqlConnection con = new SqlConnection(strConnString);


        con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        SqlDataReader rdr = cmd.ExecuteReader();

        if (rdr.HasRows)
        {
            rdr.Read();



            class_id = rdr.GetString(1);
            section_id = rdr.GetString(20);



        }
        rdr.Close();


        //   string section_id = DropDownList6.SelectedItem.ToString();
        // string class_id = DropDownList4.SelectedItem.ToString();

        strQuery = "SELECT * FROM st_ramayana_dataset WHERE (class_id = '" + class_id + "') AND (section_id = '" + section_id + "')";//'class_id = '" + class_id + "')";
        // SqlConnection con = new SqlConnection(strConnString);

        //cmd.CommandText = ;
        // con.Open();

        cmd.Connection = con;
        cmd.CommandText = strQuery;

        rdr = cmd.ExecuteReader();
       
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
                    Label2.Text = rdr.GetString(3) + " " + rdr.GetString(4) + " " + rdr.GetString(5);
                    Label5.Text = rdr.GetString(6);
                    Label3.Text = rdr.GetString(10);
                    Label4.Text = rdr.GetString(9);


                    class_id = rdr.GetString(1);
                    section_id = rdr.GetString(20);
                    Label8.Text = section_id;
                    Label7.Text = class_id;
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
        find_roll_result(Label1.Text);
        show_results();
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
    protected void Button11_Click(object sender, EventArgs e)
    {
        string st_rollno = TextBox22.Text;// DropDownList6.SelectedItem.ToString();

        find_roll_result(st_rollno);

        show_results();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        login_chk ck = new login_chk();
        Session["ctrl"] = UpdatePanel2;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Control ctrl = (Control)Session["ctrl"];
       ck.PrintWebControl(ctrl);
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        login_chk ck = new login_chk();
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
            Label sub_txt;
            TextBox total_txt;
            for (int i = 1; i < y; i++)
            {
                sub_txt = FindControl("Label" + (309 + i)) as Label;
                sub_id = sub_txt.Text;
                string attendence = TextBox431.Text;
                string remarks = TextBox430.Text;

                string regular = DropDownList7.SelectedValue.ToString();
                string clean = DropDownList9.SelectedValue.ToString();
                string discipline = DropDownList10.SelectedValue.ToString();
                string manner = DropDownList8.SelectedValue.ToString();

                

                string teacher = DropDownList16.SelectedValue.ToString();
                string mates = DropDownList17.SelectedValue.ToString();
                string recitation = DropDownList11.SelectedValue.ToString();
                string dance = DropDownList12.SelectedValue.ToString();
                string craft = DropDownList13.SelectedValue.ToString();
                string drawing = DropDownList14.SelectedValue.ToString();
                string other_activity = DropDownList15.SelectedValue.ToString();

                total_txt = FindControl("TextBox" + (22 + i)) as TextBox;
                marks = int.Parse(total_txt.Text);

                strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_type + "'," + marks + ",'" + attendence + "','" + remarks + "','" + regular + "','" + clean + "','" + discipline + "','" + manner + "','" +recitation +"','" +dance +"','" +craft +"','" +drawing +"','" + other_activity+"','" + teacher+"','" + mates+"')";//'class_id = '" + class_id + "')";
                cmd.CommandText = strQuery;

                cmd.CommandText = strQuery;

                cmd.ExecuteNonQuery();

            }
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Marks Add Successfully')", true);

        }
        else
        {
            strQuery = "delete from st_final_result where st_rollno='" + st_rollno + "' and exam_type='" + exam_type + "'";//'class_id = '" + class_id + "')";
            bool done =ck.connection_insert(strQuery);

            rdr.Close();
            Label sub_txt;
            TextBox total_txt;
            for (int i = 1; i < y; i++)
            {
                sub_txt = FindControl("Label" + (309 + i)) as Label;
                sub_id = sub_txt.Text;
                string attendence = TextBox431.Text;
                string remarks = TextBox430.Text;

                string regular = DropDownList7.SelectedValue.ToString();
                string clean = DropDownList9.SelectedValue.ToString();
                string discipline = DropDownList10.SelectedValue.ToString();
                string manner = DropDownList8.SelectedValue.ToString();

                string teacher = DropDownList16.SelectedValue.ToString();
                string mates = DropDownList17.SelectedValue.ToString();
                string recitation = DropDownList11.SelectedValue.ToString();
                string dance = DropDownList12.SelectedValue.ToString();
                string craft = DropDownList13.SelectedValue.ToString();
                string drawing = DropDownList14.SelectedValue.ToString();
                string other_activity = DropDownList15.SelectedValue.ToString();

                total_txt = FindControl("TextBox" + (22 + i)) as TextBox;
                marks = int.Parse(total_txt.Text);

                strQuery = "insert into st_final_result values ('" + st_rollno + "','" + sub_id + "','" + exam_type + "'," + marks + ",'" + attendence + "','" + remarks + "','" + regular + "','" + clean + "','" + discipline + "','" + manner + "','" + recitation + "','" + dance + "','" + craft + "','" + drawing + "','" + other_activity + "','" + teacher + "','" + mates + "')";//'class_id = '" + class_id + "')";
                cmd.CommandText = strQuery;

                cmd.CommandText = strQuery;

                cmd.ExecuteNonQuery();

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Data is update')", true);
            }
        }
        con.Close();
        find_roll_result(st_rollno);
       // find_result();
        show_results();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
       string strQuery = "select *" +
                                  " from st_final_result WHERE (st_rollno = '" + Label1.Text + "')";

       login_chk ck = new login_chk();
       SqlDataReader rrdr = ck.connection_select(strQuery);
       string select_exam = DropDownList5.SelectedItem.ToString();
        //y = 1;
        int total = 0;
        int temp_chk =0;
       while (rrdr.Read())
            {
                // get the results of each column
                string subject = (string)rrdr["sub_id"];
                string exam_type = (string)rrdr["exam_type"];

                // for term 1
                if (exam_type.Equals(select_exam))
                {
                    temp_chk=1;
                    for (int ij = 1; ij <= y; ij++)
                    {

                        Label lbl = FindControl("Label" + (309 + ij)) as Label;

                        if (subject.Equals(lbl.Text))
                        {
                            //Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
                            TextBox txt = FindControl("TextBox" + (22 + ij)) as TextBox;

                            // lblmarks.Visible = true;
                            txt.Visible = true;
                            //lblmarks.Text = (string)rrdr["marks"].ToString();
                            txt.Text = (string)rrdr["marks"].ToString();
                            //Label10.Visible = true;
                            //  break;
                            TextBox431.Text = (string)rrdr["attendence"].ToString();
                            TextBox430.Text = (string)rrdr["remarks"].ToString();
                            DropDownList7.ClearSelection();
                            DropDownList8.ClearSelection();
                            DropDownList9.ClearSelection();
                            DropDownList10.ClearSelection();
                            DropDownList11.ClearSelection();
                            DropDownList12.ClearSelection();
                            DropDownList13.ClearSelection();
                            DropDownList14.ClearSelection();
                            DropDownList15.ClearSelection();
                            DropDownList16.ClearSelection();
                            DropDownList17.ClearSelection();

                            string regular = (string)rrdr["regular"].ToString();
                            DropDownList7.Items.FindByValue(regular).Selected = true;
                            string clean = (string)rrdr["clean"].ToString();
                            DropDownList9.Items.FindByValue(clean).Selected = true;

                            string discipline = (string)rrdr["discipline"].ToString();
                            DropDownList10.Items.FindByValue(discipline).Selected = true;
                            string manner = (string)rrdr["manner"].ToString();
                            DropDownList8.Items.FindByValue(manner).Selected = true;

                            //--------
                            string recitation = (string)rrdr["recitation"].ToString();
                            DropDownList11.Items.FindByValue(recitation).Selected = true;
                            string dance = (string)rrdr["dance"].ToString();
                            DropDownList12.Items.FindByValue(dance).Selected = true;

                            string craft = (string)rrdr["craft"].ToString();
                            DropDownList13.Items.FindByValue(craft).Selected = true;
                            string drawing = (string)rrdr["drawing"].ToString();
                            DropDownList14.Items.FindByValue(drawing).Selected = true;

                            string other_activity = (string)rrdr["other_activity"].ToString();
                            DropDownList15.Items.FindByValue(other_activity).Selected = true;
                            string teacher = (string)rrdr["teacher"].ToString();
                            DropDownList16.Items.FindByValue(teacher).Selected = true;

                            string mates = (string)rrdr["mates"].ToString();
                            DropDownList17.Items.FindByValue(mates).Selected = true;

                        }

                    }
                }

                // for term 2
                //if (exam_type.Equals("Second Term"))
                //{
                //    total = 1;
                //    for (int ij = 1; ij <= y; ij++)
                //    {

                //        Label lbl = FindControl("Label" + (309 + ij)) as Label;

                //        if (subject.Equals(lbl.Text))
                //        {
                //            Label lblmarks = FindControl("Label" + (243 + ij)) as Label;
                //            //TextBox txt = FindControl("TextBox" + (7 + ij)) as TextBox;
                //            //lblmarks.Visible = true;
                //            lblmarks.Text = (string)rrdr["marks"].ToString();
                //            // txt.Text = (string)rrdr["marks"].ToString();
                //            //Label10.Visible = true;

                //            // for Total of Term1+term2
                //            Label term1lbl = FindControl("Label" + (16 + ij)) as Label;
                //            // string exam_t = "SA1";
                //            // TextBox term1txt = FindControl("TextBox" + (0 + ij)) as TextBox;

                //            //int marks = (int.Parse(lblmarks.Text) + int.Parse(term1lbl.Text));
                //            //Label total_lbl = FindControl("Label" + (37 + ij)) as Label;

                //            //total_lbl.Text = marks.ToString();
                //            //total_lbl.Visible = true;
                //            break;
                //        }

                //    }
                //}
            }
        
        if (temp_chk==0)
        { 
               for (int ij = 1; ij <= y; ij++)
                    {

                        
                            //Label lblmarks = FindControl("Label" + (16 + ij)) as Label;
                            TextBox txt = FindControl("TextBox" + (22 + ij)) as TextBox;

                            // lblmarks.Visible = true;
                            txt.Visible = true;
                            //lblmarks.Text = (string)rrdr["marks"].ToString();
                            txt.Text = "";
                            
                        }
               TextBox431.Text = "";
               TextBox430.Text = "";
                DropDownList7.ClearSelection();
                DropDownList8.ClearSelection();
                DropDownList9.ClearSelection();
                DropDownList10.ClearSelection();
                DropDownList11.ClearSelection();
                DropDownList12.ClearSelection();
                DropDownList13.ClearSelection();
                DropDownList14.ClearSelection();
                DropDownList15.ClearSelection();
                DropDownList16.ClearSelection();
                DropDownList17.ClearSelection();
            }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("main_menu.aspx");
    }
}
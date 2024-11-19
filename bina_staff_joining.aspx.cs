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
public partial class bina_staff_joining : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Have you check All Details Submit');", false);
        //if ( ScriptManager.RegisterStartupScript(this, GetType().Equals(true)))
        string school_code = "101";


        string st_rollno = TextBox10.Text;
        string st_name = TextBox1.Text;
        string st_father = TextBox2.Text;
        string st_mother = TextBox3.Text;
        //string st_rollno = TextBox10.Text;
        string st_grnder;
        if (RadioButton1.Checked == true)
        {
            st_grnder = "Male";
        }
        else
        {
            st_grnder = "Female";
        }
        string dob = DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();
        string st_mobile = TextBox4.Text;
        string temp = TextBox5.Text;
        string st_mobile_alt = "0";
        if (temp.Length.Equals(0) == false)
        {
            st_mobile_alt = temp;
        }
        string st_adress = TextBox6.Text;
        string st_state;
        if (RadioButton3.Checked == true)
        {
            st_state = "MP";
        }
        else
        {
            st_state = "Other";
        }
        string st_email = TextBox11.Text;
        string st_bhopal = TextBox7.Text;
        string st_f_occupation = TextBox8.Text;
        string st_m_occupation = TextBox9.Text;

        // Acedemics

        string st_10 = TextBox12.Text;

        string st_12 = TextBox13.Text;
        string st_12_per = TextBox14.Text;

        string st_bac = TextBox15.Text;
        string st_bac_per = TextBox16.Text;

        string st_mas = TextBox17.Text;
        string st_mas_per = TextBox18.Text;

        string st_ded = TextBox19.Text;
        string st_ded_per = TextBox20.Text;

        string st_bed = TextBox21.Text;
        string st_bed_per = TextBox22.Text;

        string st_med = TextBox23.Text;
        string st_med_per = TextBox24.Text;

        string st_phd = TextBox25.Text;
        string st_phd_per = TextBox26.Text;

        string st_dip = TextBox27.Text;
        string st_dip_per = TextBox28.Text;

        string st_oth1 = TextBox29.Text;
        string st_oth1_per = TextBox30.Text;

        string st_oth2 = TextBox31.Text;
        string st_oth2_per = TextBox32.Text;


        string st_joindate = DropDownList6.SelectedIndex.ToString() + "/" + DropDownList7.SelectedIndex.ToString() + "/" + DropDownList8.SelectedIndex.ToString();
        string st_designation = TextBox33.Text;
        string st_salary = TextBox34.Text;
       
        string st_other = TextBox36.Text;
        string profile_cat = DropDownList9.SelectedItem.ToString();
        string school_name = DropDownList10.SelectedValue.ToString();
        SqlConnection conn = new SqlConnection();

        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;

        conn.Open();
        string path = null;

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = conn;

        string dt = DateTime.Now.ToString("dd-MM-yyyy");

        string sql = "insert into staff_final_dataset values('" + st_rollno + "','" + st_name + "','" + st_father + "','" + st_mother + "','" + st_grnder + "','" + dob + "','" + st_mobile + "','" + st_mobile_alt + "','" + st_email + "','" + st_adress + "','" + st_bhopal + "','" + st_state + "','" + st_f_occupation + "','" + st_m_occupation + "','" + "101staff001" + "','" + dt + "','" + st_10 + "','" + st_12 + "','" + st_12_per + "','" + st_bac + "','" + st_bac_per + "','" + st_mas + "','" + st_mas_per + "','" + st_ded + "','" + st_ded_per + "','" + st_bed + "','" + st_bed_per + "','" + st_med + "','" + st_med_per + "','" + st_phd + "','" + st_phd_per + "','" + st_dip + "','" + st_dip_per + "','" + st_oth1 + "','" + st_oth1_per + "','" + st_oth2 + "','" + st_oth2_per + "','" + st_joindate + "','" + st_designation + "','" + st_salary + "','" + school_name + "','" + st_other + "','" + profile_cat + "','');";
        cmd.CommandText = sql;

        cmd.ExecuteNonQuery();
        // sql = "insert into st_final_attendence values('" + st_rollno +"','"+ dt + "','" + dt + "', 1);";
        login_chk ck = new login_chk();
        //string passwords = ck.GetPassword();
        //string message = "Welcome to My School. Joining is successfully done. UserId:" + st_rollno + ", Password: " + passwords;
        //cmd.CommandText = sql;

        //cmd.ExecuteNonQuery();



        //TextBox1.Text = " Connection done";


        //sql = "INSERT INTO login_table (user_id, passwrd, type, power) VALUES ('" + st_rollno + "', '" + passwords + "', 'staff', 2);";//('" + st_rollno + "','" + dt + "','" + dt + "', 1,'','');";

        //cmd.CommandText = sql;

        //cmd.ExecuteNonQuery();

        //sql = "insert into st_final_attendence values('" + st_rollno + "','" + dt + "','" + dt + "', 1,'" + message + "','');";

        //cmd.CommandText = sql;

        //cmd.ExecuteNonQuery();
        conn.Close();


        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Joining Succesfully Done');", true);
        // login_chk ck = new login_chk();
      //  string st = ck.sendMessage(st_mobile, message);


        TextBox10.Text = "";


        TextBox1.Text = "";

        TextBox2.Text = "";

        TextBox3.Text = "";

        TextBox4.Text = "";
        TextBox5.Text = "";

        TextBox6.Text = "";
        TextBox7.Text = "";

        TextBox8.Text = "";
        TextBox9.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("bina_school_admin.aspx");
    }
}
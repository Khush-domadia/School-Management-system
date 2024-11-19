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
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO; 

public partial class ramayana_addmission : System.Web.UI.Page
{
    static string photo_path = "";
    static string file_path = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("bina_school_admin.aspx");
    }
    protected void btn_find_Click(object sender, EventArgs e)
    {
        // int transactionno;
        string message = TextBox20.Text;
        // string amount = TextBox24.Text;
        if (message.Equals(""))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Rollno first');", true);

            return;
        }
        else
        {
            string sql = "select * from st_bina_dataset where st_rollno='" + TextBox20.Text + "'";
            login_chk ck = new login_chk();
            SqlDataReader rdr = ck.connection_select(sql);

            if (rdr.HasRows)
            {
                rdr.Read();
                string transactionno = rdr.GetValue(0).ToString();


                string class_id = rdr.GetValue(0).ToString();
                //string section_id = DropDownList5.SelectedItem.ToString();
                TextBox20.Text = rdr.GetValue(0).ToString();//school_code + class_id + section_id + TextBox10.Text;
               // TextBox21.Text = rdr.GetValue(24).ToString();//school_code + class_id + section_id + TextBox10.Text;
                string PathD = rdr.GetValue(2).ToString();
                photo_path = PathD;
               // Image2.ImageUrl = PathD;
                TextBox10.Text = rdr.GetValue(3).ToString();
                TextBox11.Text = rdr.GetValue(4).ToString();
                string tremp = System.Uri.UnescapeDataString(rdr.GetValue(5).ToString());
                TextBox12.Text = rdr.GetValue(5).ToString();
               // TextBox22.Text = (string)rdr["st_annual_income"].ToString(); ;
                //string dob = DropDownList1.SelectedValue.ToString() + "/" + DropDownList2.SelectedValue.ToString() + "/" + DropDownList3.SelectedValue.ToString();
                TextBox7.Text = rdr.GetValue(7).ToString();
               // TextBox13.Text = rdr.GetValue(23).ToString();

                TextBox2.Text = rdr.GetValue(9).ToString();
                TextBox3.Text = rdr.GetValue(10).ToString();
                TextBox16.Text = rdr.GetValue(11).ToString();
                //TextBox17.Text = rdr.GetValue(12).ToString();

                //TextBox4.Text = rdr.GetValue(15).ToString();
                //TextBox5.Text = rdr.GetValue(16).ToString();

                //TextBox8.Text = rdr.GetValue(13).ToString();
                //TextBox9.Text = rdr.GetValue(14).ToString();

                //TextBox18.Text = rdr.GetValue(17).ToString();
                //TextBox14.Text = rdr.GetValue(18).ToString();
                //TextBox19.Text = rdr.GetValue(19).ToString();
                TextBox23.Text = rdr.GetValue(20).ToString();
               // DropDownList7.ClearSelection();

                //DropDownList6.Items.FindByValue().Selected = true;

                string section_id = (string)rdr["section_id"].ToString();
               // DropDownList7.Items.FindByText(section_id).Selected = true;

               // DropDownList6.ClearSelection();

                //DropDownList6.Items.FindByValue().Selected = true;

                string school_id = (string)rdr["school_id"].ToString();
              //  DropDownList6.Items.FindByValue(school_id).Selected = true;
              //  DropDownList5.ClearSelection();

                string classs_id = (string)rdr["class_id"].ToString();
             //   DropDownList5.Items.FindByText(classs_id).Selected = true;

             //   TextBox32.Text = (string)rdr["st_sibling_name"].ToString();
             //   TextBox33.Text = (string)rdr["st_sibling_class"].ToString();
                TextBox23.Text = (string)rdr["st_add_date"].ToString();
                TextBox24.Text = (string)rdr["st_sub_11_12"].ToString();
               
             //   TextBox26.Text = (string)rdr["st_P_school_name"].ToString();
                //TextBox27.Text = (string)rdr["st_P_dicecode"].ToString();
                //TextBox28.Text = (string)rdr["st_P_class"].ToString();
                //TextBox29.Text = (string)rdr["st_P_year"].ToString();
                //TextBox30.Text = (string)rdr["st_P_grade"].ToString();
                //TextBox31.Text = (string)rdr["st_P_subject"].ToString();

                //TextBox34.Text = (string)rdr["st_bank_name"].ToString();
                //TextBox35.Text = (string)rdr["st_bank_account"].ToString();
                //TextBox36.Text = (string)rdr["st_bank_ifsc"].ToString();
                //TextBox25.Text = (string)rdr["st_samagra"].ToString();
                TextBox37.Text = (string)rdr["st_aadhar"].ToString();
                TextBox38.Text = (string)rdr["dob"].ToString();

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Correct Rollno');", true);

                return;

            }
        }
        string dob = DateTime.Now.ToString("dd-MM-yyyy"); //DropDownList1.SelectedIndex.ToString() + "/" + DropDownList2.SelectedIndex.ToString() + "/" + DropDownList3.SelectedIndex.ToString();

        submit_Login1.Visible = false;
        TextBox20.Visible = false;
    }
}
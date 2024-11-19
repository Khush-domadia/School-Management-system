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
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        if (TextBox20.Text.Length > 1)
        {
            login_chk ck = new login_chk();
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Have you check All Details Submit');", false);
            //if ( ScriptManager.RegisterStartupScript(this, GetType().Equals(true)))
            string school_code = DropDownList6.SelectedValue.ToString(); ;
            string st_section = DropDownList7.SelectedItem.ToString(); ;

            string class_id = DropDownList5.SelectedItem.ToString();
            //string section_id = DropDownList5.SelectedItem.ToString();
            string st_rollno = TextBox20.Text;//school_code + class_id + section_id + TextBox10.Text;
            string st_surname = TextBox10.Text;
            string st_mirname = TextBox11.Text;
            string st_firname = TextBox12.Text;
            string dob = TextBox38.Text;// DropDownList1.SelectedValue.ToString() + "/" + DropDownList2.SelectedValue.ToString() + "/" + DropDownList3.SelectedValue.ToString();
            string st_place_of_birth = TextBox7.Text;
            string st_state = TextBox7.Text;

            string st_father = TextBox2.Text;
            string st_mother = TextBox3.Text;

            string st_length = TextBox16.Text;
            string st_mother_tongue = TextBox17.Text;

            string st_father_mobile = TextBox4.Text;
            string st_mother_mobile = TextBox5.Text;

            string st_f_occupation = TextBox8.Text;
            string st_m_occupation = TextBox9.Text;

            string st_residential = TextBox18.Text;
            string st_contact_no = TextBox14.Text;
            string st_permanent = TextBox19.Text;

            string st_caste = TextBox7.Text;
            string st_category = TextBox13.Text;
            string st_religion = TextBox21.Text;
            string st_sibling_name = TextBox32.Text;
            string st_sibling_class = TextBox33.Text;

            string st_addmission_date = TextBox23.Text;
            string st_add_subject = TextBox24.Text;

            string st_p_name = TextBox26.Text;
            string st_p_dice = TextBox27.Text;

            string st_p_class = TextBox28.Text;
            string st_p_year = TextBox29.Text;

            string st_p_subject = TextBox31.Text;
            string st_p_grade = TextBox30.Text;
            string st_b_name = TextBox34.Text;

            string st_b_acc = TextBox35.Text;
            string st_b_ifsc = TextBox36.Text;

            string st_samagra = TextBox25.Text;
            string st_aadhar = TextBox37.Text;
            string st_annual_income = TextBox22.Text;
            //string file_path = "";
            if (FileUpload1.HasFile)
            {
                try
                {

                    //transactionno = find_last_transaction();

                    //~/notice/2.jpg//


                    string filename = st_rollno + FileUpload1.FileName.ToString();// GetFileName(FileUpload1.FileName);
                    //if (filename.Length > 4)

                    // FileUpload1.SaveAs(Server.MapPath("~/events/") + filename);
                    file_path = resize_img(FileUpload1, st_rollno);//
                    file_path = "~/events/" + filename;


                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Event is not Add Successfully');", true);

                }
            }
            else if (file_path.Length != 0)
            {

                // file_path = file_path;// "~/events/" + st_rollno + file_path.Substring(12);
            }

            else
            {
                file_path = "";
                // ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Select Event Banner Image (.jpg or .png)');", true);
                // return;
            }

            string dsql = "delete from st_bina_dataset where st_rollno='" + st_rollno + "';";
            Boolean finod = ck.connection_insert(dsql);

            string sql = "insert into st_bina_dataset values(N'" + st_rollno + "',N'" + class_id + "',N'" + file_path + "',N'" + st_surname + "',N'" + st_mirname + "',N'" + st_firname + "',N'" + dob + "',N'" + st_place_of_birth + "',N'" + st_state + "',N'" + st_father + "',N'" + st_mother + "',N'" + st_length + "',N'" + st_mother_tongue + "',N'" + st_f_occupation + "',N'" + st_m_occupation + "',N'" + st_father_mobile + "',N'" + st_mother_mobile + "',N'" + st_residential + "',N'" + st_contact_no + "',N'" + st_permanent + "',N'" + st_section + "',N'" + school_code + "',N'" + st_caste + "',N'" + st_category + "',N'" + st_religion + "',N'" + st_length + "',N'" + st_sibling_name + "',N'" + st_sibling_class + "',N'" + st_addmission_date + "',N'" + st_add_subject + "',N'" + st_p_name + "',N'" + st_p_dice + "',N'" + st_p_class + "',N'" + st_p_year + "',N'" + st_p_grade + "',N'" + st_p_subject + "',N'" + st_b_name + "',N'" + st_b_acc + "',N'" + st_b_ifsc + "',N'" + st_samagra + "',N'" + st_aadhar + "',N'"+st_annual_income+"');";

            // sql = "insert into st_final_attendence values('" + st_rollno +"','"+ dt + "','" + dt + "', 1);";
            // string message = "Welcome to My School. Admission in Class: " + DropDownList4.SelectedItem.ToString() + " is successfully done. UserId:" + st_rollno + ", Password: Student*01";

            finod = ck.connection_insert(sql);


            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Admission Succesfully Done');", true);
            // login_chk ck = new login_chk();
            //string st = ck.sendMessage(st_mobile, message);


            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            // TextBox1.Text = "";
            TextBox13.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox14.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox2.Text = "";

            TextBox3.Text = "";

            TextBox4.Text = "";
            TextBox5.Text = "";

            // TextBox6.Text = "";
            TextBox7.Text = "";

            TextBox8.Text = "";
            TextBox9.Text = "";
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Roll Number First');", true);

        }
    }
    public string resize_img(FileUpload FileUploader, string transactionno)
    {
        string targetPath = "";
        if (FileUploader.PostedFile != null)
        {
            // Check the extension of image  
            string extension = Path.GetExtension(FileUploader.FileName);
            if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg")
            {
                Stream strm = FileUploader.PostedFile.InputStream;
                using (var image = System.Drawing.Image.FromStream(strm))
                {
                    // Print Original Size of file (Height or Width)   
                    //Label1.Text = image.Size.ToString();
                    int newWidth = 240; // New Width of Image in Pixel  
                    int newHeight = 240; // New Height of Image in Pixel  
                    var thumbImg = new Bitmap(newWidth, newHeight);
                    var thumbGraph = Graphics.FromImage(thumbImg);
                    thumbGraph.CompositingQuality = CompositingQuality.HighQuality;
                    thumbGraph.SmoothingMode = SmoothingMode.HighQuality;
                    thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    var imgRectangle = new Rectangle(0, 0, newWidth, newHeight);
                    thumbGraph.DrawImage(image, imgRectangle);
                    // Save the file  
                    targetPath = Server.MapPath(@"~\events\") + transactionno + FileUploader.FileName;
                    thumbImg.Save(targetPath, image.RawFormat);
                    // Print new Size of file (height or Width)  
                }
            }
        }
        return targetPath;
    }
    protected void btn_show_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile && TextBox20.Text.Length > 1)
        {
            try
            {

                //transactionno = find_last_transaction();

                //~/notice/2.jpg//


                string filename = FileUpload1.FileName.ToString();// GetFileName(FileUpload1.FileName);
                //if (filename.Length > 4)
                string st_rollno = TextBox20.Text;
                // FileUpload1.SaveAs(Server.MapPath("~/events/") + filename);
                file_path = resize_img(FileUpload1, st_rollno);//
                file_path = "~/events/" + st_rollno + filename;

                Image2.ImageUrl = file_path;
                // FileUpload2 = FileUpload1;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Event is not Add Successfully');", true);

            }
        }

        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Enter Roll Number First');", true);
      
        }
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
                TextBox21.Text = rdr.GetValue(24).ToString();//school_code + class_id + section_id + TextBox10.Text;
                string PathD = rdr.GetValue(2).ToString();
                photo_path = PathD;
                Image2.ImageUrl = PathD;
                TextBox10.Text = rdr.GetValue(3).ToString();
                TextBox11.Text = rdr.GetValue(4).ToString();
                string tremp = System.Uri.UnescapeDataString(rdr.GetValue(5).ToString());
                TextBox12.Text = rdr.GetValue(5).ToString();
                TextBox22.Text = (string)rdr["st_annual_income"].ToString(); ;
                //string dob = DropDownList1.SelectedValue.ToString() + "/" + DropDownList2.SelectedValue.ToString() + "/" + DropDownList3.SelectedValue.ToString();
                TextBox7.Text = rdr.GetValue(7).ToString();
                TextBox13.Text = rdr.GetValue(23).ToString();

                TextBox2.Text = rdr.GetValue(9).ToString();
                TextBox3.Text = rdr.GetValue(10).ToString();
                TextBox16.Text = rdr.GetValue(11).ToString();
                TextBox17.Text = rdr.GetValue(12).ToString();

                TextBox4.Text = rdr.GetValue(15).ToString();
                TextBox5.Text = rdr.GetValue(16).ToString();

                TextBox8.Text = rdr.GetValue(13).ToString();
                TextBox9.Text = rdr.GetValue(14).ToString();

                TextBox18.Text = rdr.GetValue(17).ToString();
                TextBox14.Text = rdr.GetValue(18).ToString();
                TextBox19.Text = rdr.GetValue(19).ToString();
                TextBox23.Text = rdr.GetValue(20).ToString();
                DropDownList7.ClearSelection();

                //DropDownList6.Items.FindByValue().Selected = true;

                string section_id = (string)rdr["section_id"].ToString();
                DropDownList7.Items.FindByText(section_id).Selected = true;

                DropDownList6.ClearSelection();

                //DropDownList6.Items.FindByValue().Selected = true;

                string school_id = (string)rdr["school_id"].ToString();
                DropDownList6.Items.FindByValue(school_id).Selected = true;
                DropDownList5.ClearSelection();

                string classs_id = (string)rdr["class_id"].ToString();
                DropDownList5.Items.FindByText(classs_id).Selected = true;

                TextBox32.Text = (string)rdr["st_sibling_name"].ToString();
                TextBox33.Text = (string)rdr["st_sibling_class"].ToString();
                TextBox23.Text = (string)rdr["st_add_date"].ToString();
                TextBox24.Text = (string)rdr["st_sub_11_12"].ToString();
               
                TextBox26.Text = (string)rdr["st_P_school_name"].ToString();
                TextBox27.Text = (string)rdr["st_P_dicecode"].ToString();
                TextBox28.Text = (string)rdr["st_P_class"].ToString();
                TextBox29.Text = (string)rdr["st_P_year"].ToString();
                TextBox30.Text = (string)rdr["st_P_grade"].ToString();
                TextBox31.Text = (string)rdr["st_P_subject"].ToString();

                TextBox34.Text = (string)rdr["st_bank_name"].ToString();
                TextBox35.Text = (string)rdr["st_bank_account"].ToString();
                TextBox36.Text = (string)rdr["st_bank_ifsc"].ToString();
                TextBox25.Text = (string)rdr["st_samagra"].ToString();
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

      
    }
}
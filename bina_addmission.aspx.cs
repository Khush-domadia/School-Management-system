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
            string school_code = DropDownList6.SelectedValue.ToString(); 
            string st_section = DropDownList7.SelectedItem.ToString(); 

            string class_id = DropDownList5.SelectedItem.ToString();
            //string section_id = DropDownList5.SelectedItem.ToString();
            string st_rollno = TextBox20.Text;//school_code + class_id + section_id + TextBox10.Text;
            string st_surname = TextBox10.Text;
            string st_mirname = TextBox11.Text;
            string st_firname = TextBox12.Text;
            string dob = DropDownList1.SelectedValue.ToString() + "/" + DropDownList2.SelectedValue.ToString() + "/" + DropDownList3.SelectedValue.ToString();
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
           // st_firname = System.Uri.UnescapeDataString(st_firname);

            string sql = "insert into st_bina_dataset values(N'" + st_rollno + "',N'" + class_id + "',N'" + file_path + "',N'" + st_surname + "',N'" + st_mirname + "',N'" + st_firname + "',N'" + dob + "',N'" + st_place_of_birth + "',N'" + st_state + "',N'" + st_father + "',N'" + st_mother + "',N'" + st_length + "',N'" + st_mother_tongue + "',N'" + st_f_occupation + "',N'" + st_m_occupation + "',N'" + st_father_mobile + "',N'" + st_mother_mobile + "',N'" + st_residential + "',N'" + st_contact_no + "',N'" + st_permanent + "',N'" + st_section + "',N'" + school_code + "',N'" + st_caste + "',N'" + st_category + "',N'" + st_religion + "',N'" + st_length + "',N'" + st_sibling_name + "',N'" + st_sibling_class + "',N'" + st_addmission_date + "',N'" + st_add_subject + "',N'" + st_p_name + "',N'" + st_p_dice + "',N'" + st_p_class + "',N'" + st_p_year + "',N'" + st_p_grade + "',N'" + st_p_subject + "',N'" + st_b_name + "',N'" + st_b_acc + "',N'" + st_b_ifsc + "',N'" + st_samagra + "',N'" + st_aadhar + "',N'" + st_annual_income + "');";

            // sql = "insert into st_final_attendence values('" + st_rollno +"','"+ dt + "','" + dt + "', 1);";
            // string message = "Welcome to My School. Admission in Class: " + DropDownList4.SelectedItem.ToString() + " is successfully done. UserId:" + st_rollno + ", Password: Student*01";

            Boolean finod = ck.connection_insert(sql);


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
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
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
}
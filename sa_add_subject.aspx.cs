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
public partial class sa_add_subject : System.Web.UI.Page
{
    private String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    private void BindData()
    {
         string class_id = DropDownList4.SelectedValue.ToString();
       
        string strQuery = "select *" +
                           " from st_final_subject WHERE (class_id = '" + class_id + "')";
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
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
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        BindData();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void AddNewCustomer(object sender, EventArgs e)
    {
        string CustomerID = ((TextBox)GridView1.FooterRow.FindControl("txtCustomerID")).Text;
        string Name = ((TextBox)GridView1.FooterRow.FindControl("txtContactName")).Text;
        string Company = ((TextBox)GridView1.FooterRow.FindControl("txtCompany")).Text;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into customers(CustomerID, ContactName, CompanyName) " +
        "values(@CustomerID, @ContactName, @CompanyName);" +
         "select CustomerID,ContactName,CompanyName from customers";
        cmd.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = CustomerID;
        cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = Name;
        cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = Company;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    protected void DeleteCustomer(object sender, EventArgs e)
    {   string class_id = DropDownList4.SelectedValue.ToString();
    //string sub_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblsub_id")).Text;

        LinkButton lnkRemove = (LinkButton)sender;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from st_final_subject where " +
        "sub_id=@sub_id;" +
         "select * from st_final_subject WHERE (class_id = '" + class_id + "')";
        cmd.Parameters.Add("@sub_id", SqlDbType.VarChar).Value = lnkRemove.CommandArgument;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }
    protected void EditCustomer(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();
    }
    protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }
    protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
    {
        string class_id = DropDownList4.SelectedValue.ToString();
        string sub_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblsub_id")).Text;

        string sub_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsub_name")).Text;
        string sub_max_marks = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsub_max_marks")).Text;
        string sub_min_marks = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsub_min_marks")).Text;

        string sub_status = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsub_status")).Text;
        //string st_mother_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_mother_name")).Text;
        //string st_gender = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_gender")).Text;

        //string dob = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdob")).Text;
        //string st_mobile = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_mobile")).Text;
        //string st_mobile_alt = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_mobile_alt")).Text;

        //string st_email_id = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_email_id")).Text;
        //string st_address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_address")).Text;
        //string st_city = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_city")).Text;

        //string st_state = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_state")).Text;
        //string st_f_job = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_f_job")).Text;
        //string st_m_job = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_m_job")).Text;


        //string Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtContactName")).Text;
        //string Company = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtCompany")).Text;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update st_final_subject set class_id=@class_id,sub_status=@sub_status,sub_max_marks=@sub_max_marks,sub_min_marks=@sub_min_marks where sub_id=@sub_id;" +
         "select * from st_final_subject where class_id=@class_id";
        cmd.Parameters.Add("@class_id", SqlDbType.VarChar).Value = class_id;
        cmd.Parameters.Add("@sub_status", SqlDbType.VarChar).Value = sub_status;
        cmd.Parameters.Add("@sub_max_marks", SqlDbType.Int).Value = sub_max_marks;
        cmd.Parameters.Add("@sub_min_marks", SqlDbType.Int).Value = sub_min_marks;

        cmd.Parameters.Add("@sub_id", SqlDbType.VarChar).Value = sub_id;
        //cmd.Parameters.Add("@st_father_name", SqlDbType.VarChar).Value = st_father_name;
        //cmd.Parameters.Add("@st_mother_name", SqlDbType.VarChar).Value = st_mother_name;
        //cmd.Parameters.Add("@st_gender", SqlDbType.VarChar).Value = st_gender;
        //cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = dob;
        //cmd.Parameters.Add("@st_mobile", SqlDbType.VarChar).Value = st_mobile;


        //cmd.Parameters.Add("@st_mobile_alt", SqlDbType.VarChar).Value = st_mobile_alt;
        ////cmd.Parameters.Add("@st_father_name", SqlDbType.VarChar).Value = st_father_name;
        //cmd.Parameters.Add("@st_email_id", SqlDbType.VarChar).Value = st_email_id;
        //cmd.Parameters.Add("@st_address", SqlDbType.VarChar).Value = st_address;
        //cmd.Parameters.Add("@st_city", SqlDbType.VarChar).Value = st_city;
        //cmd.Parameters.Add("@st_state", SqlDbType.VarChar).Value = st_state;

        //cmd.Parameters.Add("@st_f_job", SqlDbType.VarChar).Value = st_f_job;
        //cmd.Parameters.Add("@st_m_job", SqlDbType.VarChar).Value = st_m_job;

        GridView1.EditIndex = -1;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string class_id = DropDownList4.SelectedItem.ToString();
        if (class_id.Equals("0"))
        {
            Label1.Text = "Select Class Id";
        }
        else
        {
            string sub_name = TextBox10.Text;
      

            //string sub_max = TextBox11.Text;

            int sub_min = int.Parse(TextBox12.Text.ToString());
            int sub_max = int.Parse(TextBox11.Text.ToString());

            int sub_status = 2;
            if (RadioButton1.Checked == true)
            {

                sub_status = 1;
            }
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;

            conn.Open();
            string path = null;

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = conn;
            string sql = "insert into st_final_subject values('" + class_id + "','" + sub_name + "'," + sub_max + "," + sub_min + "," + sub_status + ",'" + class_id+sub_name + "')";





            //string dt = DateTime.Now.ToString();

            //string sql = "insert into st_final_dataset values('" + st_rollno + "','" + class_id + "','" + section_id + "','" + st_name + "','" + st_father + "','" + st_mother + "','" + st_grnder + "','" + dob + "','" + st_mobile + "','" + st_mobile_alt + "','" + st_email + "','" + st_adress + "','" + st_bhopal + "','" + st_state + "','" + st_f_occupation + "','" + st_m_occupation + "','" + "101staff001" + "','" + dt + "','" + "photo_path" + "');";


            cmd.CommandText = sql;

            cmd.ExecuteNonQuery();

            //TextBox1.Text = " Connection done";

            conn.Close();
        }
        BindData();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
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


public partial class ramayana_show_data : System.Web.UI.Page
{
    private String strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void BindData()
    {
        string class_id = DropDownList4.SelectedItem.ToString();
        string section_id = DropDownList6.SelectedItem.ToString();

        //string strQuery = "SELECT st_final_dataset.st_rollno, st_final_dataset.st_name, st_final_dataset.st_father_name, st_final_dataset.st_gender, st_final_dataset.dob, st_final_dataset.st_mobile, st_final_dataset.st_address,  st_final_dataset.st_city, SUM(st_final_attendence.st_present) AS st_total FROM st_final_attendence INNER JOIN st_final_dataset ON st_final_attendence.st_rollno = st_final_dataset.st_rollno AND st_final_attendence.st_present = 1 AND class_id='" + class_id + "' and section_id='" + section_id + "' GROUP BY st_final_dataset.st_rollno, st_final_dataset.st_name, st_final_dataset.st_father_name, st_final_dataset.st_gender, st_final_dataset.dob, st_final_dataset.st_mobile, st_final_dataset.st_address, st_final_attendence.st_present, st_final_dataset.st_city";

        string strQuery = "select *" +
                           " from st_ramayana_dataset where class_id='" + class_id + "' and section_id='" + section_id + "'";
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
    {
        LinkButton lnkRemove = (LinkButton)sender;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from  st_final_dataset where " +
        "st_rollno=@st_rollno;" +
         "select * from st_final_dataset";
        cmd.Parameters.Add("@st_rollno", SqlDbType.VarChar).Value = lnkRemove.CommandArgument;
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
        string st_rollno = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblst_rollno")).Text;

        string class_id = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtclass_id")).Text;
        string section_id = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsection_id")).Text;
        string st_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_name")).Text;

        string st_father_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_father_name")).Text;
        string st_mother_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_mother_name")).Text;
        string st_gender = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_gender")).Text;

        string dob = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdob")).Text;
        string st_mobile = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_mobile")).Text;
        string st_mobile_alt = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_mobile_alt")).Text;

        string st_email_id = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_email_id")).Text;
        string st_address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_address")).Text;
        string st_city = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_city")).Text;

        string st_state = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_state")).Text;
        string st_f_job = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_f_job")).Text;
        string st_m_job = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtst_m_job")).Text;


        //string Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtContactName")).Text;
        //string Company = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtCompany")).Text;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update st_final_dataset set class_id=@class_id,section_id=@section_id,st_name=@st_name,st_father_name=@st_father_name,st_mother_name=@st_mother_name,st_gender=@st_gender,dob=@dob,st_mobile=@st_mobile,st_mobile_alt=@st_mobile_alt,st_email_id=@st_email_id,st_address=@st_address,st_city=@st_city,st_state=@st_state,st_f_job=@st_f_job,st_m_job=@st_m_job" +
         " where st_rollno=@st_rollno;" +
         "select * from st_final_dataset";
        cmd.Parameters.Add("@st_rollno", SqlDbType.VarChar).Value = st_rollno;
        cmd.Parameters.Add("@class_id", SqlDbType.VarChar).Value = class_id;
        cmd.Parameters.Add("@section_id", SqlDbType.VarChar).Value = section_id;


        cmd.Parameters.Add("@st_name", SqlDbType.VarChar).Value = st_name;
        cmd.Parameters.Add("@st_father_name", SqlDbType.VarChar).Value = st_father_name;
        cmd.Parameters.Add("@st_mother_name", SqlDbType.VarChar).Value = st_mother_name;
        cmd.Parameters.Add("@st_gender", SqlDbType.VarChar).Value = st_gender;
        cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = dob;
        cmd.Parameters.Add("@st_mobile", SqlDbType.VarChar).Value = st_mobile;


        cmd.Parameters.Add("@st_mobile_alt", SqlDbType.VarChar).Value = st_mobile_alt;
        //cmd.Parameters.Add("@st_father_name", SqlDbType.VarChar).Value = st_father_name;
        cmd.Parameters.Add("@st_email_id", SqlDbType.VarChar).Value = st_email_id;
        cmd.Parameters.Add("@st_address", SqlDbType.VarChar).Value = st_address;
        cmd.Parameters.Add("@st_city", SqlDbType.VarChar).Value = st_city;
        cmd.Parameters.Add("@st_state", SqlDbType.VarChar).Value = st_state;

        cmd.Parameters.Add("@st_f_job", SqlDbType.VarChar).Value = st_f_job;
        cmd.Parameters.Add("@st_m_job", SqlDbType.VarChar).Value = st_m_job;

        GridView1.EditIndex = -1;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        BindData();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("main_menu.aspx");
  
    }
}
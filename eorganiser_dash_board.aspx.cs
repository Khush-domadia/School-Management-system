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
public partial class portfolio : System.Web.UI.Page
{
    private String strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    int organiser_id;

    protected void Page_Load(object sender, EventArgs e)
    {
      
        try
        {
            login_chk lc = new login_chk();
            string user_id = Session["user_id"].ToString();
            string pass_id = Session["pwrd"].ToString();
            string user_type = Session["user_type"].ToString();
            int done = lc.organiser_login_chk(user_id, pass_id, user_type);
            if (done.Equals("Invalid"))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Kindly Login');", true);

                Response.Redirect("default.aspx");

            }
            else
            {
                organiser_id = done;



            }
            string sql = "select * from organiser_detail where organiser_id =" + organiser_id;
            login_chk ck = new login_chk();
            SqlDataReader sdr = ck.connection_select(sql);
            if (sdr.HasRows)
            {
                sdr.Read();
                Label6.Text = sdr.GetString(1).ToString();

                Label9.Text = sdr.GetString(2).ToString();

                Label8.Text = sdr.GetString(3).ToString();

                Label14.Text = sdr.GetString(4).ToString();

                Label10.Text = sdr.GetString(6).ToString();

                Label11.Text = sdr.GetString(8).ToString();
            }

            BindData_achivments(organiser_id);
        }
        catch (Exception ex)
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Kindly Login');", true);
           
            Response.Redirect("default.aspx");
        }
    }
    protected void logout_button(object sender, EventArgs e)
    {
        Session["user_type"] = "";
        Session["user_id"] = ""; //rdr.GetString(0);
        Session["pwrd"] = "";
       // ImageButton13.Visible = false;
       // HyperLink1.Visible = true;
        Response.Redirect("default.aspx");

    }
    private void BindData_achivments(int organiser_id)
    {
       // string organiser_id = 
        string strQuery = "SELECT event_id,cname, cvenue, cdescription, cstart_date, cend_date, cmobile1, caddress, c_paid_medium, c_paid_medium_name FROM            event_detail where eorganiser_id=" + organiser_id + " ORDER BY CONVERT(datetime, c_registration_date, 103) desc";
        //"SELECT front_id, file_name, file_path, file_detail, time, location FROM front_page_control where link='events'";
        //SELECT [file_name], [file_path], [file_detail] FROM [front_page_control]";
        SqlCommand cmd = new SqlCommand(strQuery);
        login_chk ck = new login_chk();
        SqlDataReader sdr = ck.connection_select(strQuery);
        if (sdr.HasRows)
        {
            sdr.Read();

            // string temp = sdr.GetString(0).ToString();

            //image1.ImageUrl = temp;
        }
        GridView2.DataSource = GetData(cmd);
        GridView2.DataBind();

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
        BindData_achivments(organiser_id);
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
    }
    public void event_profile(object sender, EventArgs e)
    {
        //     protected void DeleteCustomer(object sender, EventArgs e)
        LinkButton btn = (LinkButton)(sender);
        string event_id = btn.CommandArgument;
        // string event_id = "@event_id";
        //Response.Write(event_id);

        //string city = DropDownList5.SelectedItem.ToString();
        //string activity = "Dance";
        string url = "eorganiser_event_profile.aspx?";
        url += "event=" + event_id;// +"&";
        //url += "activity=" + activity;
        Response.Redirect(url);


    }

    public void event_edit_profiile(object sender, EventArgs e)
    {
    //    //     protected void DeleteCustomer(object sender, EventArgs e)
    //    LinkButton btn = (LinkButton)(sender);
    //    string event_id = btn.CommandArgument;
    //    // string event_id = "@event_id";
    //    //Response.Write(event_id);

    //    //string city = DropDownList5.SelectedItem.ToString();
    //    //string activity = "Dance";
    //    string url = "eorganiser_addevents_edit.aspx?";
    //    url += "event=" + event_id;// +"&";
    //    //url += "activity=" + activity;
    //    Response.Redirect(url);


    }
   
    protected void btn_Login_Click1(object sender, EventArgs e)
    {

    }
}
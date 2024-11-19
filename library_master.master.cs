using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
public partial class library_master : System.Web.UI.MasterPage
{
    private String strConnString = ConfigurationManager.ConnectionStrings["student_data"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        login_chk lc = new login_chk();

        string user_id = Session["user_id"].ToString();
        string pass_id = Session["pwrd"].ToString();

        bool done = true;// lc.admin_login_chk(user_id, pass_id);
        if (done == false)
        {
            Response.Redirect("slogin.aspx");

        }
        if (!IsPostBack)
        {
            // BindData();
        }
    }
}

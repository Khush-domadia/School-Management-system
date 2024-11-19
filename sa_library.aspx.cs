using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sa_library : System.Web.UI.Page
{
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
    }
}
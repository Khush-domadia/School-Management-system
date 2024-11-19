using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.IO.Compression;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO; 
public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        login_chk ck = new login_chk();

        string st_rollno=TextBox1.Text;
        
        string sql = "insert into st_dataset values(N'" + st_rollno + "');";

        // sql = "insert into st_final_attendence values('" + st_rollno +"','"+ dt + "','" + dt + "', 1);";
        // string message = "Welcome to My School. Admission in Class: " + DropDownList4.SelectedItem.ToString() + " is successfully done. UserId:" + st_rollno + ", Password: Student*01";

      Boolean  finod = ck.connection_insert(sql);
           sql = "select * from st_dataset";
             ck = new login_chk();
            SqlDataReader rdr = ck.connection_select(sql);

            if (rdr.HasRows)
            {

                while (rdr.Read())
                {
                    Label1.Text = rdr.GetValue(0).ToString();
                }
            }
    }
}
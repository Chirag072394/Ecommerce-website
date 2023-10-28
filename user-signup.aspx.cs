using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Common;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;

public partial class usersignup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    public string sql = null;

    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    protected void btnsubmitclick(object sender, EventArgs e)
    {

        string password = txtpassword.Text;
        string confirmPassword = txtconfirmpassword.Text;

        if (password == confirmPassword)
        {
            string vname = txtname.Text.Trim();
            string vemail = txtemail.Text.Trim();
            string vmobile = txtmobile.Text.Trim();
            string vpassword = txtpassword.Text.Trim();
            
           

            con.Open();
            sql = "insert into usersignup(username,password,mobile,email) values(@vvname,@vvpassword,@vvemail,@vvmobile)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@vvname", vname);
            cmd.Parameters.AddWithValue("@vvpassword", vpassword);
            cmd.Parameters.AddWithValue("@vvphoneno", vmobile);
            cmd.Parameters.AddWithValue("@vvemail", vemail);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Save Successfully')", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password and confirmation do not match. Please try again')", true);
        }
    }

    protected void RecordCancel(object sender, EventArgs e)
    {

    }


    public object vphoneno { get; set; }

    

}


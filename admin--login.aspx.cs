using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnloginclick(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select [userId],[password] from [adminlogin] where [userid]=@tuserid and [password]=@tpassword", con);
            cmd.Parameters.Add("@tuserid", SqlDbType.VarChar, 20).Value = txtadmin.Text;
            cmd.Parameters.Add("@tpassword", SqlDbType.VarChar, 20).Value = txtpassword.Text;
            SqlDataReader datardr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            if (datardr.Read())
            {
                FormsAuthentication.RedirectFromLoginPage(txtadmin.Text, false);
                Session["id"] = txtadmin.Text;
                Response.Redirect("admin-index.aspx");
            }
            else
            {
                Page.RegisterClientScriptBlock("js", "<script>alert('User Id or Password is not correct');</script>");
                Session["id"] = "";
            }
        }
        catch (Exception exc)
        {
        }
        finally
        {
            con.Close();
        }
    }
}
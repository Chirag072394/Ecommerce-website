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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    public string sql = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        GetData();
    }

    public void GetData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT TOP 4 * FROM products", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }
}
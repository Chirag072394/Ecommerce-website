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


public partial class adminproducts : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    public string sql = null;

    public class global
    {
        public static bool NewRecords = false;
        public static bool EditRecords = true;
        public static bool DeleteRecords = true;
        public static int id;
        public static bool SaveRecord = false;
        public static bool CancelRecords { get; set; }
    }


    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!IsPostBack)
    //    {
    //        GetData();
    //        global.EditRecords = false;
    //        global.NewRecords = true;
    //        btnadd.Visible = true;
    //        btnsave.Visible = false;
    //        btncancel.Visible = false;
    //        txtsearch.Text = "";
    //    }
    //}
    //private void GetData()
    //{
    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("select * from products order by id desc", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    GridView1.DataSource = ds.Tables[0];
    //    GridView1.DataBind();
    //    conn.Close();
    //}
    //protected void RecordNew(object sender, EventArgs e)
    //{
    //    global.EditRecords = false;
    //    global.NewRecords = true;
    //    btnadd.Visible = false;
    //    btnsave.Visible = true;
    //    btncancel.Visible = true;
    //    chksearch.Checked = false;
    //    BlankRecord();
    //}

    //protected void RecordSave(object sender, EventArgs e)
    //{
    //    if (global.EditRecords == true)
    //    {
    //        UpdateRecord();
    //        global.EditRecords = false;
    //        global.NewRecords = false;
    //        btnnew.Visible = true;
    //        btnsave.Visible = true;
    //        btncancel.Visible = false;
    //        chksearch.Checked = false;
    //        BlankRecord();
    //        GridView1.EditIndex = -1;
    //        GetData();
    //    }
    //    else if (global.NewRecords == true)
    //    {
    //        AddRecord();
    //        global.EditRecords = false;
    //        global.NewRecords = true;
    //        btnnew.Visible = false;
    //        btncancel.Visible = true;
    //        btnsave.Visible = true;
    //        chksearch.Checked = false;
    //        global.SaveRecord = true;
    //        BlankRecord();
    //        GridView1.EditIndex = -1;
    //        GetData();
    //        if (global.SaveRecord == true)
    //        {
    //            btnnew.Visible = true;
    //            btnsave.Visible = false;
    //            btncancel.Visible = false;
    //            txtsearch.Text = "";

    //        }
    //    }

    //}

    //private void UpdateRecord()
    //{
    //    try
    //    {
    //        if (global.EditRecords == true)
    //        {
    //            global.NewRecords = false;
    //            string vname = txtproductname.Text.Trim();
    //            string vcategory= txtcategory.Text.Trim();
    //            string vprice = txtprice.Text.Trim();
    //            string vquantity = txtquantity.Text.Trim();
    //            conn.Open();
    //            sql = "update  set name=@vvname,mobile=@vvmobile,email=@vvemail where id= @vvid";
    //            SqlCommand cmd = new SqlCommand(sql, conn);
    //            cmd.Parameters.AddWithValue("@vvid", global.id);
    //            cmd.Parameters.AddWithValue("@vvname", vname);
    //            cmd.Parameters.AddWithValue("@vvmobile", vprice);
    //            cmd.Parameters.AddWithValue("@vvemail", vquantity);
    //            cmd.ExecuteNonQuery();
    //            conn.Close();
    //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
    //        }
    //    }
    //    catch (Exception ee)
    //    {
    //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(ee.Message.ToString())", true);
    //    }
    //}

    //public void AddRecord()
    //{
    //    try
    //    {
    //        if (global.NewRecords == true)
    //        {
    //            string vname = txtname.Text.Trim();
    //            string vmobile = txtmobile.Text.Trim();
    //            string vEmail = txtemail.Text.Trim();
    //               fileupload();
    //               string vimg = s;
    //            conn.Open();
    //            sql = "insert into enquiry(name,mobile,email) values(@vvname,@vvmobile,@vvemail)";
    //            SqlCommand cmd = new SqlCommand(sql, conn);
    //            cmd.Parameters.AddWithValue("@vvname", vname);
    //            cmd.Parameters.AddWithValue("@vvmobile", vmobile);
    //            cmd.Parameters.AddWithValue("@vvemail", vEmail);
    //            cmd.ExecuteNonQuery();
    //            conn.Close();
    //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Save Successfully')", true);
    //        }
    //    }
    //    catch (Exception ee)
    //    {
    //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(ee.Message.ToString())", true);
    //    }
    //}

    //private void fileupload()
    //{
    //    string fileName = string.Empty;
    //    string extension = string.Empty;
    //    try
    //    {
    //        if (fileuploadimg.HasFile)
    //        {
    //            extension = Path.GetExtension(fileuploadimg.FileName).ToLower();
    //            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif" || extension == ".bmp")
    //            {
    //                s = @"~/images/products/" + fileuploadimg.FileName;
    //                fileuploadimg.PostedFile.SaveAs(Server.MapPath(s));
    //            }
    //            else
    //            {
    //                lblmsg.Visible = false;
    //                lblmsg.Text = "Please select jpg, jpeg, png, gif or bmp file only";
    //            }
    //        }
    //        else
    //        {
    //            lblmsg.Visible = false;
    //            lblmsg.Text = "Please select file to upload";
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lblmsg.Visible = false;
    //        lblmsg.Text = "Oops!! error occured : " + ex.Message.ToString();
    //    }

    //}

    //protected void RecordCancel(object sender, EventArgs e)
    //{
    //    global.EditRecords = false;
    //    global.NewRecords = false;
    //    btnnew.Visible = true;
    //    btnsave.Visible = false;
    //    btncancel.Visible = false;
    //    chksearch.Checked = false;
    //    BlankRecord();
    //    GridView1.EditIndex = -1;
    //    GetData();
    //}

    //protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)// for grids edit and delete button
    //{
    //    if (e.CommandName == "EditData")
    //    {
    //        global.EditRecords = true;
    //        global.DeleteRecords = false;
    //        btnnew.Visible = false;
    //        btnsave.Visible = true;
    //        btncancel.Visible = true;
    //        chksearch.Checked = false;
    //        global.id = Convert.ToInt32(e.CommandArgument);
    //        using (var connection = conn)
    //        using (var command = connection.CreateCommand())
    //        {
    //            command.CommandText = "Select * from products where id=" + global.id + "";
    //            connection.Open();
    //            using (var reader = command.ExecuteReader())
    //            {
    //                while (reader.Read())
    //                {
    //                    txtname.Text = reader["name"].ToString();
    //                    txtmobile.Text = reader["mobile"].ToString();
    //                    txtemail.Text = reader["email"].ToString();

    //                }
    //            }
    //            connection.Close();
    //        }
    //    }
    //    if (e.CommandName == "Delete")
    //    {
    //        btnnew.Visible = true;
    //        chksearch.Checked = false;
    //        global.id = Convert.ToInt32(e.CommandArgument);
    //        conn.Open();
    //        SqlCommand cmd = new SqlCommand("delete from products where id=" + global.id + "", conn);
    //        cmd.ExecuteNonQuery();
    //        conn.Close();
    //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Successfully')", true);
    //        GetData();
    //    }
    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    chksearch.Checked = false;
    //    GetData();
    //}

    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    chksearch.Checked = false;
    //    GridView1.PageIndex = e.NewPageIndex;
    //    GetData();
    //}

    //public void BlankRecord()
    //{
    //    txtname.Text = "";
    //    txtmobile.Text = "";
    //    txtemail.Text = "";
    //}

    //protected void RecordSearch(object sender, EventArgs e)
    //{
    //    if (chksearch.Checked == true)
    //    {
    //        GetDataSearch();
    //    }
    //}

    //private void GetDataSearch()
    //{
    //    SqlCommand cmd = new SqlCommand("select * from products where name like '" + txtsearch.Text + "%' order by id desc", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    if (ds.Tables[0].Rows.Count == 0)
    //    {
    //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sorry! Please Enter Correct Name')", true);
    //    }
    //    else
    //    {
    //        GridView1.DataSource = ds.Tables[0];
    //        GridView1.DataBind();
    //    }
    //    conn.Close();
    //}



}
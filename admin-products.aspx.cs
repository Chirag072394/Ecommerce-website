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
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
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


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
            global.EditRecords = false;
            global.NewRecords = true;
            btnadd.Visible = true;
            btnsave.Visible = false;
            btncancel.Visible = false;
            txtsearch.Text = "";
        }
    }
    private void GetData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from products order by id desc", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }
    protected void RecordNew(object sender, EventArgs e)
    {
        global.EditRecords = false;
        global.NewRecords = true;
        btnadd.Visible = false;
        btnsave.Visible = true;
        btncancel.Visible = true;
        chksearch.Checked = false;
        BlankRecord();
    }

    protected void RecordSave(object sender, EventArgs e)
    {
        if (global.EditRecords == true)
        {
            UpdateRecord();
            global.EditRecords = false;
            global.NewRecords = false;
            btnadd.Visible = true;
            btnsave.Visible = true;
            btncancel.Visible = false;
            chksearch.Checked = false;
            BlankRecord();
            GridView1.EditIndex = -1;
            GetData();
        }
        else if (global.NewRecords == true)
        {
            AddRecord();
            global.EditRecords = false;
            global.NewRecords = true;
            btnadd.Visible = false;
            btncancel.Visible = true;
            btnsave.Visible = true;
            chksearch.Checked = false;
            global.SaveRecord = true;
            BlankRecord();
            GridView1.EditIndex = -1;
            GetData();
            if (global.SaveRecord == true)
            {
                btnadd.Visible = true;
                btnsave.Visible = false;
                btncancel.Visible = false;
                txtsearch.Text = "";
            }
        }
    }

    private void UpdateRecord()
    {
        try
        {
            if (global.EditRecords == true)
            {
                global.NewRecords = false;
                string vproductname = txtproductname.Text.Trim();
                string vcategory = ddlcategory.Text.Trim();
                string vprice = txtprice.Text.Trim();
                string vquantity = txtquantity.Text.Trim();
                con.Open();
                sql = "update set productname=@vvproductname,cateogry=@vvcategory,price=@vvprice,quantity=@vvquantity where id= @vvid";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@vvid", global.id);
                cmd.Parameters.AddWithValue("@vvproductname", vproductname);
                cmd.Parameters.AddWithValue("@vvcateogry", vcategory);
                cmd.Parameters.AddWithValue("@vvprice", vprice);
                cmd.Parameters.AddWithValue("@vvprice", vquantity);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
            }
        }
        catch (Exception ee)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(ee.Message.ToString())", true);
        }
    }

    public void AddRecord()
    {
        try
        {
            if (global.NewRecords == true)
            {
                string vproductname = txtproductname.Text.Trim();
                string vcategory = ddlcategory.Text.Trim();
                string vprice = txtprice.Text.Trim();
                string vquantity = txtquantity.Text.Trim();
              
                fileupload();
                string vimg = s;
                
                con.Open();
                sql = "insert into products(productname,category,image,price,quantity) values(@vvproductname,@vvcategory,@vvimg,@vvprice,@vvquantity)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@vvproductname", vproductname);
                cmd.Parameters.AddWithValue("@vvcategory", vcategory);
                cmd.Parameters.AddWithValue("@vvimg", vimg);
                cmd.Parameters.AddWithValue("@vvprice", vprice);
                cmd.Parameters.AddWithValue("@vvquantity", vquantity);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Save Successfully')", true);
            }
        }
        catch (Exception ee)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(ee.Message.ToString())", true);
        }
    }

    private void fileupload()
    {
        string fileName = string.Empty;
        string extension = string.Empty;
        try
        {
            if (fileuploadimg.HasFile)
            {
                extension = Path.GetExtension(fileuploadimg.FileName).ToLower();
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif" || extension == ".bmp")
                {
                    s = @"~/images/products/" + fileuploadimg.FileName;
                    fileuploadimg.PostedFile.SaveAs(Server.MapPath(s));
                }
                else
                {
                    lblmsg.Visible = false;
                    lblmsg.Text = "Please select jpg, jpeg, png, gif or bmp file only";
                }
            }
            else
            {
                lblmsg.Visible = false;
                lblmsg.Text = "Please select file to upload";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Visible = false;
            lblmsg.Text = "Oops!! error occured : " + ex.Message.ToString();
        }

    }

    protected void RecordCancel(object sender, EventArgs e)
    {
        global.EditRecords = false;
        global.NewRecords = false;
        btnadd.Visible = true;
        btnsave.Visible = false;
        btncancel.Visible = false;
        chksearch.Checked = false;
        BlankRecord();
        GridView1.EditIndex = -1;
        GetData();
    }

    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)// for grids edit and delete button
    {
        if (e.CommandName == "EditData")
        {
            global.EditRecords = true;
            global.DeleteRecords = false;
            btnadd.Visible = false;
            btnsave.Visible = true;
            btncancel.Visible = true;
            chksearch.Checked = false;
            global.id = Convert.ToInt32(e.CommandArgument);
            using (var connection = con)
            using (var command = connection.CreateCommand())
            {
                command.CommandText = "Select * from products where id=" + global.id + "";
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        txtproductname.Text = reader["productname"].ToString();
                        ddlcategory.Text = reader["category"].ToString();
                        txtprice.Text = reader["price"].ToString();
                        txtquantity.Text = reader["quantity"].ToString();

                    }
                }
                connection.Close();
            }
        }
        if (e.CommandName == "Delete")
        {
            btnadd.Visible = true;
            chksearch.Checked = false;
            global.id = Convert.ToInt32(e.CommandArgument);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from products where id=" + global.id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Successfully')", true);
            GetData();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        chksearch.Checked = false;
        GetData();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        chksearch.Checked = false;
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }

    public void BlankRecord()
    {
        txtproductname.Text = "";
        ddlcategory.Text = "";
        txtprice.Text = "";
        txtquantity.Text = "";
       
    }

    protected void RecordSearch(object sender, EventArgs e)
    {
        if (chksearch.Checked == true)
        {
            GetDataSearch();
        }
    }

    private void GetDataSearch()
    {
        SqlCommand cmd = new SqlCommand("select * from products where productname like '" + txtsearch.Text + "%' order by id desc", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sorry! Please Enter Correct Name')", true);
        }
        else
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        con.Close();
    }




    public string s { get; set; }
}
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

public partial class pxUploadImages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection UserConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        OleDbCommand realuser = new OleDbCommand("Select count(*) from admin where username = ?", UserConnection);
        realuser.Parameters.Add("?", OleDbType.Char).Value = Convert.ToString(Session["44userzxc"]);
        UserConnection.Open();
        OleDbDataReader usercheck = realuser.ExecuteReader();

        if (usercheck.HasRows)
        {
            while (usercheck.Read())
            {
                string strNum = Convert.ToString(usercheck[0]);
                if (strNum == "0")
                {
                    UserConnection.Close();
                    Response.Redirect("home.aspx");
                }
            }
        }
        else
        {
            UserConnection.Close();
        }
                
        MultiView1.SetActiveView(View3);

        Label4.Text = Convert.ToString(Session["num"]);
    }
    protected void lbBacck_Click(object sender, EventArgs e)
    {
        Response.Redirect("soberaysonly.aspx?item=onemore");
    }

    protected void btnup1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                string filename = FileUpload1.FileName;

                string location = Server.MapPath("./images/" + Session["num"] + "/");
                System.IO.Directory.CreateDirectory(location);
                //save image

                FileUpload1.SaveAs(location + filename);
                Label1.Text = "Image Uploaded";
                string imageupdate = location.Replace('\\', '/') + filename;
                string imageinsert = imageupdate.Substring(32);

                OleDbConnection ImageConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
                Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

                OleDbCommand rubberortire = new OleDbCommand("Select count(*) from product where item_number = ?", ImageConnection);
                rubberortire.Parameters.Add("?", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                ImageConnection.Open();
                OleDbDataReader usercheck = rubberortire.ExecuteReader();

                if (usercheck.HasRows)
                {
                        usercheck.Read();
                        string strNum = Convert.ToString(usercheck[0]);
                        if (strNum == "1")
                        {
                            OleDbCommand image_1update = new OleDbCommand("UPDATE product SET image_1 = ? WHERE item_number = @", ImageConnection);
                            image_1update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                            image_1update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                            image_1update.ExecuteNonQuery();
                            ImageConnection.Close();
                        }
                        else
                        {
                            OleDbCommand image_2update = new OleDbCommand("UPDATE tire_machinery SET image_1 = ? WHERE item_number = @", ImageConnection);
                            image_2update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                            image_2update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                            image_2update.ExecuteNonQuery();
                            ImageConnection.Close();
                        }
                    
                }
                else
                {
                    ImageConnection.Close();
                }
                ImageConnection.Close();
            }
            catch
            {
                Label1.Text = "Uploading Image 1 Failed";
            }
        }
        else
        {
            Label1.Text = "Specify a file to upload";
        }
    }
    protected void btnup2_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            try
            {
                string filename = FileUpload2.FileName;

                string location = Server.MapPath("./images/" + Session["num"] + "/");
                System.IO.Directory.CreateDirectory(location);
                //save image

                FileUpload2.SaveAs(location + filename);
                Label1.Text = "Image Uploaded";
                string imageupdate = location.Replace('\\', '/') + filename;
                string imageinsert = imageupdate.Substring(32);

                OleDbConnection ImageConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
                Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

                OleDbCommand rubberortire = new OleDbCommand("Select count(*) from product where item_number = ?", ImageConnection);
                rubberortire.Parameters.Add("?", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                ImageConnection.Open();
                OleDbDataReader usercheck = rubberortire.ExecuteReader();

                if (usercheck.HasRows)
                {
                    usercheck.Read();
                    string strNum = Convert.ToString(usercheck[0]);
                    if (strNum == "1")
                    {
                        OleDbCommand image_1update = new OleDbCommand("UPDATE product SET image_2 = ? WHERE item_number = @", ImageConnection);
                        image_1update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                        image_1update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                        image_1update.ExecuteNonQuery();
                        ImageConnection.Close();
                    }
                    else
                    {
                        OleDbCommand image_2update = new OleDbCommand("UPDATE tire_machinery SET image_2 = ? WHERE item_number = @", ImageConnection);
                        image_2update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                        image_2update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                        image_2update.ExecuteNonQuery();
                        ImageConnection.Close();
                    }

                }
                else
                {
                    ImageConnection.Close();
                }
                ImageConnection.Close();
            }
            catch
            {
                Label1.Text = "Uploading Image 2 Failed";
            }
        }
        else
        {
            Label1.Text = "Specify a file to upload";
        }
    }
    protected void btnup3_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile)
        {
            try
            {
                string filename = FileUpload3.FileName;

                string location = Server.MapPath("./images/" + Session["num"] + "/");
                System.IO.Directory.CreateDirectory(location);
                //save image

                FileUpload3.SaveAs(location + filename);
                Label1.Text = "Image Uploaded";
                string imageupdate = location.Replace('\\', '/') + filename;
                string imageinsert = imageupdate.Substring(32);

                OleDbConnection ImageConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
                Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

                OleDbCommand rubberortire = new OleDbCommand("Select count(*) from product where item_number = ?", ImageConnection);
                rubberortire.Parameters.Add("?", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                ImageConnection.Open();
                OleDbDataReader usercheck = rubberortire.ExecuteReader();

                if (usercheck.HasRows)
                {
                    usercheck.Read();
                    string strNum = Convert.ToString(usercheck[0]);
                    if (strNum == "1")
                    {
                        OleDbCommand image_1update = new OleDbCommand("UPDATE product SET image_3 = ? WHERE item_number = @", ImageConnection);
                        image_1update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                        image_1update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                        image_1update.ExecuteNonQuery();
                        ImageConnection.Close();
                    }
                    else
                    {
                        OleDbCommand image_2update = new OleDbCommand("UPDATE tire_machinery SET image_3 = ? WHERE item_number = @", ImageConnection);
                        image_2update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                        image_2update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                        image_2update.ExecuteNonQuery();
                        ImageConnection.Close();
                    }

                }
                else
                {
                    ImageConnection.Close();
                }
                ImageConnection.Close();                
            }
            catch
            {
                Label1.Text = "Uploading Image 3 Failed";
            }
        }
        else
        {
            Label1.Text = "Specify a file to upload";
        }
    }
    protected void btnup4_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile)
        {
            try
            {
                string filename = FileUpload4.FileName;

                string location = Server.MapPath("./images/" + Session["num"] + "/");
                System.IO.Directory.CreateDirectory(location);
                //save image

                FileUpload4.SaveAs(location + filename);
                Label1.Text = "Image Uploaded";
                string imageupdate = location.Replace('\\', '/') + filename;
                Session["test"] = imageupdate;
                //lblsession.Text = imageupdate;
                string imageinsert = imageupdate.Substring(32);

                OleDbConnection ImageConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
                Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

                OleDbCommand rubberortire = new OleDbCommand("Select count(*) from product where item_number = ?", ImageConnection);
                rubberortire.Parameters.Add("?", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                ImageConnection.Open();
                OleDbDataReader usercheck = rubberortire.ExecuteReader();

                if (usercheck.HasRows)
                {
                    usercheck.Read();
                    string strNum = Convert.ToString(usercheck[0]);
                    if (strNum == "1")
                    {
                        OleDbCommand image_1update = new OleDbCommand("UPDATE product SET image_4 = ? WHERE item_number = @", ImageConnection);
                        image_1update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                        image_1update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                        image_1update.ExecuteNonQuery();
                        ImageConnection.Close();
                    }
                    else
                    {
                        OleDbCommand image_2update = new OleDbCommand("UPDATE tire_machinery SET image_4 = ? WHERE item_number = @", ImageConnection);
                        image_2update.Parameters.Add("?", OleDbType.Char).Value = imageinsert;
                        image_2update.Parameters.Add("@", OleDbType.Char).Value = Convert.ToString(Session["num"]);
                        image_2update.ExecuteNonQuery();
                        ImageConnection.Close();
                    }

                }
                else
                {
                    ImageConnection.Close();
                }
                ImageConnection.Close();
            }
            catch
            {
                
                Label1.Text = "Uploading Image 4 Failed";                
            }
        }
        else
        {
            Label1.Text = "Specify a file to upload";
        }
    }
}

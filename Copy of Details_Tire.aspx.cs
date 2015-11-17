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

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Pre_Render(object sender, EventArgs e)
    {
        //string queryNumber = Request.QueryString["item"];

        //OleDbConnection ImageConnection = new
        //OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        //Server.MapPath(null).ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        //OleDbCommand ImageLooker5 = new OleDbCommand("Select image_1 from [tire_machinery] where [item_number] = @itemnumber", ImageConnection);
        //ImageLooker5.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        //OleDbCommand ImageLooker2 = new OleDbCommand("Select image_2 from [tire_machinery] where [item_number] = @itemnumber", ImageConnection);
        //ImageLooker2.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        //OleDbCommand ImageLooker3 = new OleDbCommand("Select image_3 from [tire_machinery] where [item_number] = @itemnumber", ImageConnection);
        //ImageLooker3.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        //OleDbCommand ImageLooker4 = new OleDbCommand("Select image_4 from [tire_machinery] where [item_number] = @itemnumber", ImageConnection);
        //ImageLooker4.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        //ImageConnection.Open();

        //OleDbDataReader ImageLooker5Reader = ImageLooker5.ExecuteReader();

        //if (ImageLooker5Reader.HasRows)
        //{
        //    ImageLooker5Reader.Read();
        //    Session["Image5URL"] = Convert.ToString(ImageLooker5Reader[0]);

        //    if (Session["Image5URL"] == "")
        //    {
        //        DataList1.Items[11].Visible = false;
        //    }

        //}

        //ImageLooker5Reader.Close();

        //OleDbDataReader ImageLooker2Reader = ImageLooker2.ExecuteReader();

        //if (ImageLooker2Reader.HasRows)
        //{
        //    ImageLooker2Reader.Read();
        //    Session["Image2URL"] = Convert.ToString(ImageLooker2Reader[0]);

        //    if (Session["Image2URL"] == "")
        //    {
        //        Image2.Visible = false;
        //    }
        //}

        //ImageLooker2Reader.Close();

        //OleDbDataReader ImageLooker3Reader = ImageLooker3.ExecuteReader();

        //if (ImageLooker3Reader.HasRows)
        //{
        //    ImageLooker3Reader.Read();
        //    Session["Image3URL"] = Convert.ToString(ImageLooker3Reader[0]);

        //    if (Session["Image3URL"] == null)
        //    {
        //        Image3.Visible = false;
        //    }
        //}

        //ImageLooker3Reader.Close();

        //OleDbDataReader ImageLooker4Reader = ImageLooker4.ExecuteReader();

        //if (ImageLooker4Reader.HasRows)
        //{
        //    ImageLooker4Reader.Read();
        //    Session["Image4URL"] = Convert.ToString(ImageLooker4Reader[0]);

        //    if (Session["Image4URL"] == null)
        //    {
        //        Image4.Visible = false;
        //    }
        //}

        //if (Session["Image5URL"] == null)
        //{
        //    if (Session["Image3URL"] == null)
        //    {
        //        if (Session["Image2URL"] == null)
        //        {
        //            if (Session["Image4URL"] == null)
        //            {
        //                noImages.Text = "There are no images for this item.  Contact us for more information";
        //                Panel3.Enabled = true;
        //                Panel3.Visible = true;
        //            }
        //        }
        //    }
        //}
        //// Label1.Text = Convert.ToString(Session["Image5URL"]) + "-----";
        //ImageLooker4Reader.Close();
        //ImageConnection.Close();
    }
}

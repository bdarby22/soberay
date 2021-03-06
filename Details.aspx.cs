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
        string queryNumber = Request.QueryString["item"];

        OleDbConnection ImageConnection = new
        OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        Server.MapPath(null).ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        OleDbCommand ImageLooker5 = new OleDbCommand("Select image_1 from [product] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker5.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbCommand ImageLooker2 = new OleDbCommand("Select image_2 from [product] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker2.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbCommand ImageLooker3 = new OleDbCommand("Select image_3 from [product] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker3.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbCommand ImageLooker4 = new OleDbCommand("Select image_4 from [product] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker4.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        ImageConnection.Open();

        OleDbDataReader ImageLooker5Reader = ImageLooker5.ExecuteReader();

        if (ImageLooker5Reader.HasRows)
        {
            ImageLooker5Reader.Read();
            string Image5URL = ImageLooker5Reader[0].ToString();

            if (Image5URL == "")
            {
                OleDbCommand UpdateForNoImage5 = new OleDbCommand("UPDATE [product] SET [image_1] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
                UpdateForNoImage5.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

                UpdateForNoImage5.ExecuteNonQuery();

            }
            ImageLooker5Reader.Close();
        }



        OleDbDataReader ImageLooker2Reader = ImageLooker2.ExecuteReader();

        if (ImageLooker2Reader.HasRows)
        {
            ImageLooker2Reader.Read();
            string Image2URL = ImageLooker2Reader[0].ToString();

            if (Image2URL == "")
            {
                OleDbCommand UpdateForNoImage2 = new OleDbCommand("UPDATE [product] SET [image_2] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
                UpdateForNoImage2.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

                UpdateForNoImage2.ExecuteNonQuery();

            }
        }

        ImageLooker2Reader.Close();

        OleDbDataReader ImageLooker3Reader = ImageLooker3.ExecuteReader();

        if (ImageLooker3Reader.HasRows)
        {
            ImageLooker3Reader.Read();
            string Image3URL = ImageLooker3Reader[0].ToString();

            if (Image3URL == "")
            {
                OleDbCommand UpdateForNoImage3 = new OleDbCommand("UPDATE [product] SET [image_3] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
                UpdateForNoImage3.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

                UpdateForNoImage3.ExecuteNonQuery();

            }
        }

        ImageLooker3Reader.Close();

        OleDbDataReader ImageLooker4Reader = ImageLooker4.ExecuteReader();

        if (ImageLooker4Reader.HasRows)
        {
            ImageLooker4Reader.Read();
            string Image4URL = ImageLooker4Reader[0].ToString();

            if (Image4URL == "")
            {
                OleDbCommand UpdateForNoImage4 = new OleDbCommand("UPDATE [product] SET [image_4] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
                UpdateForNoImage4.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

                UpdateForNoImage4.ExecuteNonQuery();
            }
        }

        // Label1.Text = Convert.ToString(Session["Image5URL"]) + "-----";
        
        OleDbCommand gettitle = new OleDbCommand("Select manufacturer, [size], [style], [type] FROM [product] WHERE [item_number] = @itemnumber", ImageConnection);
        gettitle.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbDataReader pagetitle = gettitle.ExecuteReader();
        if (pagetitle.HasRows)
        {
            pagetitle.Read();
            Page.Title = pagetitle[0] + " " + pagetitle[1] + " " + pagetitle[2] + " " + pagetitle[3];
        }
              
        ImageLooker4Reader.Close();
        ImageConnection.Close();
    }
}

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

        OleDbCommand ImageLooker5 = new OleDbCommand("Select image_1 from [accessories] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker5.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbCommand ImageLooker2 = new OleDbCommand("Select image_2 from [accessories] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker2.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbCommand ImageLooker3 = new OleDbCommand("Select image_3 from [accessories] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker3.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        OleDbCommand ImageLooker4 = new OleDbCommand("Select image_4 from [accessories] where [item_number] = @itemnumber", ImageConnection);
        ImageLooker4.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

        ImageConnection.Open();

        OleDbDataReader ImageLooker5Reader = ImageLooker5.ExecuteReader();

        if (ImageLooker5Reader.HasRows)
        {
            ImageLooker5Reader.Read();
            string Image5URL = ImageLooker5Reader[0].ToString();

            if (Image5URL == "")
            {
                OleDbCommand UpdateForNoImage5 = new OleDbCommand("UPDATE [accessories] SET [image_1] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
                UpdateForNoImage5.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

                UpdateForNoImage5.ExecuteNonQuery();

            }

            //OleDbCommand UpdatePasswordCommand = new OleDbCommand("UPDATE xUSER SET [Password] = (@Password) WHERE EmailAddress = @EmailAddress", WishlistConnection);

            //int iCount = DataList1.Items.Count;
            //for (int i = 0; i < iCount; i++)
            //{
            //    Image image_5 = ((Image)DataList1.Items[i].FindControl("image5"));
            //    if (image_5.ImageUrl == "")
            //    {
            //        Eval("images/noimage.gif");                   
            //    }
            //}
            ImageLooker5Reader.Close();
        }



        OleDbDataReader ImageLooker2Reader = ImageLooker2.ExecuteReader();

        if (ImageLooker2Reader.HasRows)
        {
            ImageLooker2Reader.Read();
            string Image2URL = ImageLooker2Reader[0].ToString();

            if (Image2URL == "")
            {
                OleDbCommand UpdateForNoImage2 = new OleDbCommand("UPDATE [accessories] SET [image_2] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
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
                OleDbCommand UpdateForNoImage3 = new OleDbCommand("UPDATE [accessories] SET [image_3] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
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
                OleDbCommand UpdateForNoImage4 = new OleDbCommand("UPDATE [accessories] SET [image_4] = 'images/noimage.gif' WHERE [item_number] = @itemnumber", ImageConnection);
                UpdateForNoImage4.Parameters.Add("@itemnumber", OleDbType.Char).Value = queryNumber;

                UpdateForNoImage4.ExecuteNonQuery();

            }
        }

        // Label1.Text = Convert.ToString(Session["Image5URL"]) + "-----";
        ImageLooker4Reader.Close();
        ImageConnection.Close();
    }
}

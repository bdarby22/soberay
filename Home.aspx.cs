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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ibEdit = (ImageButton)sender;
        DataListItem dtlDataListItem = (DataListItem)ibEdit.NamingContainer;

        int itemnumber = Convert.ToInt32((((Label)dtlDataListItem.FindControl("num")).Text));

        Response.Redirect("Details.aspx?item=" + itemnumber);
    }
}

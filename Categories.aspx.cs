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

public partial class Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string queryType = Request.QueryString["type"];
        lblType.Text = queryType.ToUpper() + "S";

        if (queryType == "silicone")
        {
            lblType.Text = queryType.ToUpper();
        }

        Label1.Text = queryType.ToUpper() + "S:" + " TCU's, Controls, Lubrication, Motors ...";

        if (DataList5.Items.Count == 0)
        {
            pOthers.Enabled = false;
            pOthers.Visible = false;
        }
        Page.Title = "Rubber " + queryType +"s";
    }


}

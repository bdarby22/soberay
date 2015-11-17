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

public partial class Calenders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (DataList5.Items.Count == 0)
        {
            pOthers.Visible = false;
        }

        Label1.Text = "EXTRUDERS:" + " TCU's, Controls, Lubrication, Motors ...";
    }
  
}


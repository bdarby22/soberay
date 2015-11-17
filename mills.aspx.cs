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

public partial class mills : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "MILLS:" + " TCU's, Controls, Lubrication, Motors ...";
    }
    //protected void LinkButton5_Click(object sender, EventArgs e)
    //{
    //    DataList5.Visible = false;

    //    DataList6.Visible = true;

    //    DataList7.Visible = false;

    //    DataList8.Visible = false;
    //}
   
}


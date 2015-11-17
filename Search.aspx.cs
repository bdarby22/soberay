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

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string q = TextBox1.Text.Replace(" ", "+");

        Response.Redirect("Results.aspx?q=" + q);

        //Response.Redirect("http://www.google.com/search?hl=en&q=" + q + "+site%3Ahttp%3A%2F%2Fwww.soberaysons.com&btnG=Search");



    }
}

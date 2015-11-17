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

public partial class All_Machinery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlMeta description = new HtmlMeta();
        description.Name = "description";
        description.Content = "All tire machinery / tyre machinery products that Soberay and Sons has in stock";
        Header.Controls.Add(description);
    }
}

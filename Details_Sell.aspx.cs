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
        MultiView1.SetActiveView(View2);

            HtmlMeta robots = new HtmlMeta(); 
            robots.Name = "robots";
            robots.Content = "noindex,nofollow"; 
            Header.Controls.Add(robots);

        SetFocus(txtUser);
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        System.Data.OleDb.OleDbConnection logincheck = new System.Data.OleDb.OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
    Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        System.Data.OleDb.OleDbCommand checkusername = new System.Data.OleDb.OleDbCommand("SELECT username FROM ADMIN where username = @user and password = @pass", logincheck);
        checkusername.Parameters.Add("@user", System.Data.OleDb.OleDbType.Char).Value = txtUser.Text;
        checkusername.Parameters.Add("@pass", System.Data.OleDb.OleDbType.Char).Value = txtPass.Text;

        logincheck.Open();
        System.Data.OleDb.OleDbDataReader namereader = checkusername.ExecuteReader();

        if (namereader.HasRows)
        {
            MultiView1.SetActiveView(View1);
        }
        logincheck.Close();
    }
}

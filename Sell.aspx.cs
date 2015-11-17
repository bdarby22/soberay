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

public partial class Sell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblType2.Text = Convert.ToString(Session["x5namer"]);
        txtEmail.Text = Convert.ToString(Session["x5enamer"]);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection InsertConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        OleDbCommand InsertIt = new OleDbCommand("INSERT INTO SALES (name, email, company, manufacturer, location_equip, type, phone, fax, location_person, description) VALUES (@name, @email, @company, @manufacturer, @location_equip, @type, @phone, @fax, @location_person, @description)", InsertConnection);
        InsertIt.Parameters.Add("@name", OleDbType.Char).Value = Convert.ToString(Session["x5namer"]);
        InsertIt.Parameters.Add("@email", OleDbType.Char).Value = txtEmail.Text;
        InsertIt.Parameters.Add("@company", OleDbType.Char).Value = TextBox2.Text;
        InsertIt.Parameters.Add("@manufacturer", OleDbType.Char).Value = TextBox3.Text;
        InsertIt.Parameters.Add("@location_equip", OleDbType.Char).Value = TextBox4.Text;
        InsertIt.Parameters.Add("@type", OleDbType.Char).Value = TextBox5.Text;
        InsertIt.Parameters.Add("@phone", OleDbType.Char).Value = TextBox6.Text;
        InsertIt.Parameters.Add("@fax", OleDbType.Char).Value = TextBox7.Text;
        InsertIt.Parameters.Add("@location", OleDbType.Char).Value = TextBox8.Text;
        InsertIt.Parameters.Add("@description", OleDbType.Char).Value = TextBox9.Text;

        InsertConnection.Open();
        InsertIt.ExecuteNonQuery();
        InsertConnection.Close();

        Label2.Visible = true;
    }
}

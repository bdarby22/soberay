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

public partial class Tire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.SmartNavigation = false;
        
        lblType.Text = "TIRE MACHINERY";

        //SELECT [item_number], [size], [style], [manufacturer] FROM [TIRE_MACHINERY] WHERE ([type] = ?)

        OleDbConnection TireConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
            Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        OleDbCommand TireCommand = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer] FROM [TIRE_MACHINERY] WHERE ([type] = @type)", TireConnection);
        TireCommand.Parameters.Add("@type", OleDbType.Char).Value = Convert.ToString(DropDownList1.SelectedItem);

        TireConnection.Open();
        OleDbDataReader TireReader = TireCommand.ExecuteReader();

        if (TireReader.HasRows)
        {
            DataList1.DataSource = TireReader;
            DataList1.DataBind();
        }

        { 
            HtmlMeta keywords = new HtmlMeta(); 
            keywords.Name = "keywords"; 
            keywords.Content = "tire machinery, used tire machinery, tires, rubber machinery, used rubber machinery"; 
            Header.Controls.Add(keywords);

            HtmlMeta description = new HtmlMeta();
            description.Name = "description";
            description.Content = "Over 20 different types of used tire machinery";
            Header.Controls.Add(description); 
        }
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["tireSelection"] = DropDownList1.SelectedItem;

        //Label1.Text = Session["tireSelection"].ToString();
    }
}

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
using System.Text.RegularExpressions;

public partial class Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetFocus(TextBox1);
        
        string h = Request.QueryString["home"];
        string q = Request.QueryString["q"];
        query.Text = q;
        populateDatalist();

        if (DataList1.Items.Count == 0 )
        {
            if (DataList2.Items.Count == 0)
            {
                if (DataList3.Items.Count == 0)
                {
                    if (DataList4.Items.Count == 0)
                    {
                        lblNoResults.Visible = true;
                    }
                }
            }

        }
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string t = TextBox1.Text.Replace(" ", "+");

        Response.Redirect("Results.aspx?q=" + t);
    }

    protected void populateDatalist()
    {
        string p = Request.QueryString["q"];
        txtHidden1.Text = p;
        string q = txtHidden1.Text.Replace("\"", " ").Replace("'", "").Trim(); 
        
        if (q.Trim() != "")
        {
            OleDbConnection SearchConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
            Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

            OleDbCommand SearchCommand = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [PRODUCT] WHERE ([type] LIKE @name)", SearchConnection);
            SearchCommand.Parameters.Add("@name", OleDbType.Char).Value = "%" + q + "%";

            SearchConnection.Open();
            OleDbDataReader SearchReader = SearchCommand.ExecuteReader();

            if (SearchReader.HasRows)
            {
                DataList1.DataSource = SearchReader;
                DataList1.DataBind();
            }
            
                OleDbCommand SearchCommand_1 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [PRODUCT] WHERE ([size] LIKE @name)", SearchConnection);
                SearchCommand_1.Parameters.Add("@name", OleDbType.Char).Value = "%" + q + "%";

                
                OleDbDataReader SearchReader_1 = SearchCommand_1.ExecuteReader();

                if (SearchReader_1.HasRows)
                {
                    DataList1.DataSource = SearchReader_1;
                    DataList1.DataBind();
                }
                
                
                    OleDbCommand SearchCommand_2 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [PRODUCT] WHERE ([style] LIKE @name)", SearchConnection);
                    SearchCommand_2.Parameters.Add("@name", OleDbType.Char).Value = "%" + q + "%";

                    
                    OleDbDataReader SearchReader_2 = SearchCommand_2.ExecuteReader();

                    if (SearchReader_2.HasRows)
                    {
                        DataList1.DataSource = SearchReader_2;
                        DataList1.DataBind();
                    }
                    
                        OleDbCommand SearchCommand_3 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [PRODUCT] WHERE ([manufacturer] LIKE @name)", SearchConnection);
                        SearchCommand_3.Parameters.Add("@name", OleDbType.Char).Value = "%" + q + "%";

                        
                        OleDbDataReader SearchReader_3 = SearchCommand_3.ExecuteReader();

                        if (SearchReader_3.HasRows)
                        {
                            DataList1.DataSource = SearchReader_3;
                            DataList1.DataBind();
                        }
              
            OleDbCommand SearchCommand2 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [PRODUCT] WHERE ([item_number] LIKE @number)", SearchConnection);
            SearchCommand2.Parameters.Add("@number", OleDbType.Char).Value = "%" + q + "%";

            OleDbDataReader SearchReader2 = SearchCommand2.ExecuteReader();

            if (SearchReader2.HasRows)
            {
                DataList2.DataSource = SearchReader2;
                DataList2.DataBind();
            }
            
            OleDbCommand SearchCommand3 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [TIRE_MACHINERY] WHERE ([product_name] LIKE @tire)", SearchConnection);
            SearchCommand3.Parameters.Add("@tire", OleDbType.Char).Value = "%" + q + "%";

            OleDbDataReader SearchReader3 = SearchCommand3.ExecuteReader();
            if (SearchReader3.HasRows)
            {
                DataList3.DataSource = SearchReader3;
                DataList3.DataBind();
            }
            
            
                OleDbCommand SearchCommand31 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [TIRE_MACHINERY] WHERE ([size] LIKE @tire)", SearchConnection);
                SearchCommand31.Parameters.Add("@tire", OleDbType.Char).Value = "%" + q + "%";

                OleDbDataReader SearchReader31 = SearchCommand31.ExecuteReader();
                if (SearchReader31.HasRows)
                {
                    DataList3.DataSource = SearchReader31;
                    DataList3.DataBind();
                }
                
                
                    OleDbCommand SearchCommand32 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [TIRE_MACHINERY] WHERE ([style] LIKE @tire)", SearchConnection);
                    SearchCommand32.Parameters.Add("@tire", OleDbType.Char).Value = "%" + q + "%";

                    OleDbDataReader SearchReader32 = SearchCommand32.ExecuteReader();
                    if (SearchReader32.HasRows)
                    {
                        DataList3.DataSource = SearchReader32;
                        DataList3.DataBind();
                    }
                    
                    
                        OleDbCommand SearchCommand33 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [TIRE_MACHINERY] WHERE ([manufacturer] LIKE @tire)", SearchConnection);
                        SearchCommand33.Parameters.Add("@tire", OleDbType.Char).Value = "%" + q + "%";

                        OleDbDataReader SearchReader33 = SearchCommand33.ExecuteReader();
                        if (SearchReader33.HasRows)
                        {
                            DataList3.DataSource = SearchReader33;
                            DataList3.DataBind();
                        }
                        
                        
                            OleDbCommand SearchCommand34 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [TIRE_MACHINERY] WHERE ([type] LIKE @tire)", SearchConnection);
                            SearchCommand34.Parameters.Add("@tire", OleDbType.Char).Value = "%" + q + "%";

                            OleDbDataReader SearchReader34 = SearchCommand34.ExecuteReader();
                            if (SearchReader34.HasRows)
                            {
                                DataList3.DataSource = SearchReader34;
                                DataList3.DataBind();
                            }

            OleDbCommand SearchCommand4 = new OleDbCommand("SELECT [item_number], [size], [style], [manufacturer], [type] FROM [TIRE_MACHINERY] WHERE ([item_number] LIKE @tirenumber)", SearchConnection);
            SearchCommand4.Parameters.Add("@tirenumber", OleDbType.Char).Value = "%" + q + "%";

            OleDbDataReader SearchReader4 = SearchCommand4.ExecuteReader();
            if (SearchReader4.HasRows)
            {
                DataList4.DataSource = SearchReader4;
                DataList4.DataBind();
            }
            SearchConnection.Close();
        }
        
        Page.Title = q + " Search Results";
     }
  
}

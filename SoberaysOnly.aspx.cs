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

public partial class SoberaysOnly : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strChar = Convert.ToString(Session["44userzxc"]);
        OleDbConnection UserConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        OleDbCommand realuser = new OleDbCommand("Select count(*) from admin where username = @user", UserConnection);
        realuser.Parameters.Add("@user", OleDbType.Char).Value = Convert.ToString(Session["44userzxc"]);
        UserConnection.Open();
        OleDbDataReader usercheck = realuser.ExecuteReader();

        if (usercheck.HasRows)
        {
            while (usercheck.Read())
            {
                string strNum = Convert.ToString(usercheck[0]);
                if (strNum == "0")
                {
                    Response.Redirect("home.aspx");
                }
            }
        }

        HtmlMeta robots = new HtmlMeta();
        robots.Name = "robots";
        robots.Content = "noindex,nofollow";
        Header.Controls.Add(robots);

        MultiView1.SetActiveView(View1);

        if (Request.QueryString["item"] == "onemore")
        {
            //FormView1.DefaultMode = FormViewMode.ReadOnly;
            MultiView1.SetActiveView(View2);
        }
        if (Request.QueryString["upload"] == "image")
        {
            MultiView1.SetActiveView(View3);
        }
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
       // MultiView1.SetActiveView(View1);
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        createnewkeywordslist();
    }
    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        createnewkeywordslist();
    }
    protected void lbEdit_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void lbNew_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }

    protected void NewButton_Click(object sender, EventArgs e)
    {
        //createnewkeywordslist();
        MultiView1.SetActiveView(View2);
        //TabContainer2.TabIndex[0];
    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
              
    }
    protected void InsertCancelButton_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void InsertCancelButton_Click1(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }

    protected void createnewkeywordslist()
    {
        OleDbConnection WordsConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");
        WordsConnection.Open();
        OleDbCommand DeleteWords = new OleDbCommand("DELETE * FROM KEYWORDS", WordsConnection);
        DeleteWords.ExecuteNonQuery();

        string sql = "SELECT DISTINCT manufacturer FROM PRODUCT";

        OleDbDataAdapter WordReader = new OleDbDataAdapter(sql, WordsConnection);

        DataTable dt = new DataTable();
        WordReader.Fill(dt);
        string[] items = new string[dt.Rows.Count];
        int i = 0;
        foreach (DataRow dr in dt.Rows)
        {
            OleDbCommand insertmfr = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@mfr)", WordsConnection);
            insertmfr.Parameters.Add("@mfr", OleDbType.Char).Value = dr[0].ToString();
            i++;
            insertmfr.ExecuteNonQuery();
        }

        string sql1 = "SELECT DISTINCT [size] FROM PRODUCT";

        OleDbDataAdapter WordReaderx = new OleDbDataAdapter(sql1, WordsConnection);

        DataTable dtx = new DataTable();
        WordReaderx.Fill(dtx);
        string[] items1 = new string[dtx.Rows.Count];
        int i1 = 0;
        foreach (DataRow dr1 in dtx.Rows)
        {
            OleDbCommand insertmfr1 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@size)", WordsConnection);
            insertmfr1.Parameters.Add("@size", OleDbType.Char).Value = dr1[0].ToString();
            i1++;
            insertmfr1.ExecuteNonQuery();
        }

        string sql2 = "SELECT DISTINCT [style] FROM PRODUCT";

        OleDbDataAdapter WordReader2 = new OleDbDataAdapter(sql2, WordsConnection);

        DataTable dt2 = new DataTable();
        WordReader2.Fill(dt2);
        string[] items2 = new string[dt2.Rows.Count];
        int i2 = 0;
        foreach (DataRow dr2 in dt2.Rows)
        {
            OleDbCommand insertmfr2 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@style)", WordsConnection);
            insertmfr2.Parameters.Add("@style", OleDbType.Char).Value = dr2[0].ToString();
            i2++;
            insertmfr2.ExecuteNonQuery();
        }

        string sql3 = "SELECT DISTINCT type FROM PRODUCT";

        OleDbDataAdapter WordReader3 = new OleDbDataAdapter(sql3, WordsConnection);

        DataTable dt3 = new DataTable();
        WordReader3.Fill(dt3);
        string[] items3 = new string[dt3.Rows.Count];
        int i3 = 0;
        foreach (DataRow dr3 in dt3.Rows)
        {
            OleDbCommand insertmfr3 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@type)", WordsConnection);
            insertmfr3.Parameters.Add("@type", OleDbType.Char).Value = dr3[0].ToString();
            i3++;
            insertmfr3.ExecuteNonQuery();
        }

        string sql4 = "SELECT DISTINCT manufacturer FROM TIRE_MACHINERY";

        OleDbDataAdapter WordReader4 = new OleDbDataAdapter(sql4, WordsConnection);

        DataTable dt4 = new DataTable();
        WordReader4.Fill(dt4);
        string[] items4 = new string[dt4.Rows.Count];
        int i4 = 0;
        foreach (DataRow dr4 in dt4.Rows)
        {
            OleDbCommand insertmfr4 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@mfr)", WordsConnection);
            insertmfr4.Parameters.Add("@mfr", OleDbType.Char).Value = dr4[0].ToString();
            i++;
            insertmfr4.ExecuteNonQuery();
        }

        string sql5 = "SELECT DISTINCT [size] FROM TIRE_MACHINERY";

        OleDbDataAdapter WordReader5 = new OleDbDataAdapter(sql5, WordsConnection);

        DataTable dt5 = new DataTable();
        WordReader5.Fill(dt5);
        string[] items5 = new string[dt5.Rows.Count];
        int i5 = 0;
        foreach (DataRow dr5 in dt5.Rows)
        {
            OleDbCommand insertmfr5 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@mfr)", WordsConnection);
            insertmfr5.Parameters.Add("@mfr", OleDbType.Char).Value = dr5[0].ToString();
            i++;
            insertmfr5.ExecuteNonQuery();
        }

        string sql6 = "SELECT DISTINCT [style] FROM TIRE_MACHINERY";

        OleDbDataAdapter WordReader6 = new OleDbDataAdapter(sql6, WordsConnection);

        DataTable dt6 = new DataTable();
        WordReader6.Fill(dt6);
        string[] items6 = new string[dt6.Rows.Count];
        int i6 = 0;
        foreach (DataRow dr6 in dt6.Rows)
        {
            OleDbCommand insertmfr6 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@mfr)", WordsConnection);
            insertmfr6.Parameters.Add("@mfr", OleDbType.Char).Value = dr6[0].ToString();
            i++;
            insertmfr6.ExecuteNonQuery();
        }

        string sql7 = "SELECT DISTINCT type FROM TIRE_MACHINERY";

        OleDbDataAdapter WordReader7 = new OleDbDataAdapter(sql7, WordsConnection);

        DataTable dt7 = new DataTable();
        WordReader7.Fill(dt7);
        string[] items7 = new string[dt7.Rows.Count];
        int i7 = 0;
        foreach (DataRow dr7 in dt7.Rows)
        {
            OleDbCommand insertmfr7 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@mfr)", WordsConnection);
            insertmfr7.Parameters.Add("@mfr", OleDbType.Char).Value = dr7[0].ToString();
            i++;
            insertmfr7.ExecuteNonQuery();
        }

        //Remove duplicates from the table

        //Saves a single entry of the current duplicates
        string sql8 = "select distinct keywords.words from keywords group by keywords.words having (((count(keywords.words))>1))";
        OleDbDataAdapter WordReader8 = new OleDbDataAdapter(sql8, WordsConnection);
        DataTable dt8 = new DataTable();
        WordReader8.Fill(dt8);

        //deletes all entries with duplicates
        string sqldelete = "delete from keywords where words in(SELECT First(KEYWORDS.words)FROM KEYWORDS GROUP BY KEYWORDS.words HAVING (((Count(KEYWORDS.words))>1)))";
        OleDbCommand deletedups = new OleDbCommand(sqldelete, WordsConnection);
        deletedups.ExecuteNonQuery();

        //inserts a single entry of what orignially had duplicates
        string[] items8 = new string[dt8.Rows.Count];
        int i8 = 0;
        foreach (DataRow dr8 in dt8.Rows)
        {
            OleDbCommand insertmfr8 = new OleDbCommand("INSERT INTO KEYWORDS (words) VALUES (@mfr)", WordsConnection);
            insertmfr8.Parameters.Add("@mfr", OleDbType.Char).Value = dr8[0].ToString();
            i++;
            insertmfr8.ExecuteNonQuery();
        }

        WordsConnection.Close();
    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    //protected void lbBacck_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("soberaysonly.aspx?item=onemore");
    //}
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        string strNum = ((TextBox)((FormView)sender).FindControl("item_numberTextBox")).Text;
        Session["num"] = strNum;  
    }
    //protected void LinkButton3_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("soberaysonly.aspx");
    //}

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("pxuploadimages.aspx");
    }
    protected void FormView2_ItemInserting1(object sender, FormViewInsertEventArgs e)
    {
        string strNum = ((TextBox)((FormView)sender).FindControl("item_numberTextBox")).Text;
        Session["num"] = strNum;  
    }
    protected void FormView2_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        createnewkeywordslist();
        Response.Redirect("pxuploadimages.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["num"] = TextBox6.Text;
        Response.Redirect("pxUploadImages.aspx");
        SetFocus(TextBox6);
    }
}   

using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Data;
using System.Collections;



/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {
    [WebMethod]
    public string[] GetWords(string prefixText)
    {
        int count = 10;
        OleDbConnection GetWordsConnection = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
        Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");
        string sql = "SELECT words FROM KEYWORDS WHERE words LIKE @prefixText";

        OleDbDataAdapter WordReader = new OleDbDataAdapter(sql, GetWordsConnection);
        WordReader.SelectCommand.Parameters.Add("@prefixText", OleDbType.Char).Value = prefixText + "%";
        
        DataTable dt = new DataTable();
        WordReader.Fill(dt);
        string[] items = new string[dt.Rows.Count];
        int i = 0;
        foreach (DataRow dr in dt.Rows)
        {
            items.SetValue(dr["words"].ToString(), i);
            i++;
        }
        return items;
    }
    //[WebMethod]
    //public string[] GetWords(string prefixText, int count)
    //{
    //    if (count == 0)
    //    {
    //        count = 10;
    //    }

    //    Random random = new Random();
    //    List<string> items = new List<string>(count);
    //    for (int i = 0; i < count; i++)
    //    {
    //        char c1 = (char)random.Next(65, 90);
    //        char c2 = (char)random.Next(97, 122);
    //        char c3 = (char)random.Next(97, 122);

    //        items.Add(prefixText + c1 + c2 + c3);
    //    }

    //    return items.ToArray();
    //}
   
}


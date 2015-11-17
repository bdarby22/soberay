
<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ibEdit = (ImageButton)sender;
        DataListItem dtlDataListItem = (DataListItem)ibEdit.NamingContainer;

        int itemnumber = Convert.ToInt32((((Label)dtlDataListItem.FindControl("num")).Text));
        
        Response.Redirect("Details.aspx?item=" + itemnumber);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string q = TextBox3.Text.Replace(" ", "+");

        Response.Redirect("Results.aspx?q=" + q);
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        System.Data.OleDb.OleDbConnection logincheck = new System.Data.OleDb.OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" +
            Server.MapPath("").ToString() + "\\App_Data\\xSobesInventoryx.mdb");

        System.Data.OleDb.OleDbCommand checkusername = new System.Data.OleDb.OleDbCommand("SELECT username FROM ADMIN where username = @user and password = @pass", logincheck);
        checkusername.Parameters.Add("@user", System.Data.OleDb.OleDbType.Char).Value = TextBox4.Text;
        checkusername.Parameters.Add("@pass", System.Data.OleDb.OleDbType.Char).Value = TextBox5.Text;

        logincheck.Open();
        System.Data.OleDb.OleDbDataReader namereader = checkusername.ExecuteReader();

        if (namereader.HasRows)
        {   
            Session["44userzxc"] = TextBox4.Text;
            Response.Redirect("SoberaysOnly.aspx");
            logincheck.Close();
        }
        else
        {
            Label1.Visible = true;
        }
        logincheck.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (DataList3.Items.Count == 0)
        {
            Panel4.Visible = false;
        }
        if (DataList2.Items.Count == 0)
        {
            Label2.Visible = true;
        }

        SetFocus(TextBox3);
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ibEdit2 = (ImageButton)sender;
        DataListItem dtlDataListItem2 = (DataListItem)ibEdit2.NamingContainer;

        int itemnumber2 = Convert.ToInt32((((Label)dtlDataListItem2.FindControl("num")).Text));

        Response.Redirect("Details_Tire.aspx?item=" + itemnumber2);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Soberay and Sons Ltd. - Used Rubber Machinery Experts</title>
<meta name="robots" content="noindex,nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!-- ImageReady Preload Script (template v2_preslice.psd) -->
<script type="text/javascript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImagesArray(array) {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<array.length; i+=2) {
			document[array[i]].src = array[i+1];
		}
	}
}

function changeImages() {
	changeImagesArray(changeImages.arguments);
}

function toggleImages() {
	for (var i=0; i<toggleImages.arguments.length; i+=2) {
		if (selected == toggleImages.arguments[i])      changeImagesArray(toggleImages.arguments[i+1]);
	}
}

var selected = '';
var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		soberay_v2_08_over = newImage("images/soberay_v2_08-over.gif");
		soberay_v2_10_over = newImage("images/soberay_v2_10-over.gif");
		soberay_v2_12_over = newImage("images/soberay_v2_12-over.gif");
		soberay_v2_14_over = newImage("images/soberay_v2_14-over.gif");
		preloadFlag = true;
	}
}

// -->
</script>
<!-- End Preload Script -->

<meta name="description" content="The most reliable name in international rubber machinery for over 40 years" />
<meta name=keywords" content="Used Rubber Machinery, Rubber Machinery, Rubber, Extruders, Calenders, Mixers, Mills, Tire Machinery, Used Tire machinery, silicone, inner tube, rebuilds, rubber machinery rebuilds, spare parts, rubber parts, soberay, soberay and sons, soberay machinery" />

</head>
<body bgcolor="white" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="preloadImages();"><form runat=server id="Form1">
<!-- ImageReady Slices (template v2_preslice.psd) -->
<table id="Table_01" width="790" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="19" bgcolor="#f0f0f0" style="height: 10px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="100"
                ServiceMethod="GetWords" ServicePath="WebService.asmx" TargetControlID="TextBox3" MinimumPrefixLength="1" >
            </cc1:AutoCompleteExtender>
			</td>
		<td style="height: 10px">
			<img src="images/spacer.gif" width="1" height="10" alt=""></td>
	</tr>
	<tr>
		<td colspan="19" style="height: 69px">
            <table style="width: 100%">
                <tr>
                    <td colspan="2" valign="top">
                        &nbsp; &nbsp;<span style="color: red"><strong><span style="font-size: 11pt">ADMIN LOGIN</span>
                        </strong></span>&nbsp;
                        Username:&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="10pt" ValidationGroup="4" TabIndex="3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                            ErrorMessage="*" Font-Bold="True" ValidationGroup="4"></asp:RequiredFieldValidator>&nbsp;
                        Password:&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" Font-Size="10pt" ValidationGroup="4" TextMode="Password" TabIndex="4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                            ErrorMessage="*" Font-Bold="True" ValidationGroup="4"></asp:RequiredFieldValidator>&nbsp;
                        <asp:Button
                ID="btnlogin" runat="server" BackColor="WhiteSmoke" BorderColor="DimGray" BorderStyle="Outset"
                BorderWidth="1px" Font-Names="Tahoma" Font-Size="8pt" Text="login" OnClick="btnlogin_Click" ValidationGroup="4" TabIndex="5" />
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="Incorrect"
                            Visible="False"></asp:Label></td>
                </tr>
                <tr>
                    <td bgcolor="#f0f0f0" colspan="2" style="height: 10px" valign="top">
                        <span style="font-size: 0.5em">&nbsp;</span></td>
                </tr>
                <tr>
                    <td style="width: 311px">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/soberaytitlebig.gif"
                            PostBackUrl="~/Home.aspx" TabIndex="6" /></td>
                    <td valign="top">
                        <span><strong>
                            <br />
                            &nbsp;
                            &nbsp; Rubber Machinery Experts<br />
                        </strong>Tire Machinery / Tyre Machinery</span></td>
                </tr>
            </table>
			</td>
		<td style="height: 69px">
			<img src="images/spacer.gif" width="1" height="69" alt=""></td>
	</tr>
	<tr>
		<td colspan="19">
			<img src="images/soberay_v2_03.gif" width="800" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td rowspan="36" style="width: 19px" valign="top">
			<img src="images/soberay_v2_04.gif" width="18" height="341" alt=""></td>
        <td rowspan="36" style="width: 175px" valign="top">
            <asp:Panel ID="Panel2" runat="server" Width="174px">
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="174">
                    <tr>
                        <td nowrap="nowrap" rowspan="2">
                            <img alt="" height="29" src="images/soberay_v2_1_05.gif" width="174" /></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_18.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" rowspan="2" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="master" NavigateUrl="~/Calenders.aspx">Calenders</asp:HyperLink></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_21.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="master" NavigateUrl="~/Extruders.aspx">Extruders</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_23.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="master" NavigateUrl="~/HPresses.aspx">Hydraulic Presses</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_25.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="master" NavigateUrl="~/IPresses.aspx">Injection Presses</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_27.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink9" runat="server" CssClass="master" NavigateUrl="~/InnerTube.aspx">Inner Tube</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_29.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink8" runat="server" CssClass="master" NavigateUrl="~/Lab.aspx">Lab Equipment</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 1px">
                            <img alt="" height="1" src="images/soberay_v2_1_31.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />&nbsp; &nbsp;
                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="master" NavigateUrl="~/mills.aspx">Mills</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_33.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="master" NavigateUrl="~/Categories.aspx?type=mixer">Mixers</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_35.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink10" runat="server" CssClass="master" NavigateUrl="~/Silicone.aspx">Silicone</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_37.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink7" runat="server" CssClass="master" NavigateUrl="~/Tire.aspx">Tire Machinery</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_39.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />&nbsp; &nbsp;
                            <asp:HyperLink ID="HyperLink11" runat="server" CssClass="master" NavigateUrl="~/Misc.aspx">Miscellaneous</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 1px">
                            <img alt="" height="1" src="images/soberay_v2_1_41.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />&nbsp; &nbsp;
                            <asp:HyperLink ID="HyperLink12" runat="server" CssClass="master" NavigateUrl="~/Rebuilds.aspx">Re-Builds</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_43.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />&nbsp; &nbsp;
                            <asp:HyperLink ID="HyperLink13" runat="server" CssClass="master" NavigateUrl="http://www.rubbermachineryparts.com/">Spare Parts</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_45.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 20px">
                            &nbsp; &nbsp;
                            <img src="images/bullet.gif" width="5" height="8" />&nbsp; &nbsp;
                            <asp:HyperLink ID="HyperLink14" runat="server" CssClass="master" NavigateUrl="~/Liquid.aspx">Liquidations</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="1" src="images/soberay_v2_1_47.gif" width="174" /></td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            <img alt="" height="17" src="images/soberay_v2_1_48.gif" width="174" /></td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
		<td rowspan="36" style="width: 9px" valign="top">
			<img src="images/soberay_v2_06.gif" width="8" height="341" alt=""></td>
		<td rowspan="22">
			<img src="images/soberay_v2_07.gif" width="14" height="197" alt=""></td>
		<td>
			<a href="http://www.soberayandsons.com/Home.aspx"
				onmouseover="toggleImages('soberay_v2_10', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif'), 'soberay_v2_12', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif'), 'soberay_v2_14', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif'), '', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif'));
return true;"
				onmouseout="toggleImages('soberay_v2_08', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_10', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10',
'images/soberay_v2_10-over.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_12', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12-over.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'),
'soberay_v2_14', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14-over.gif'), '', new Array('soberay_v2_08', 'images/soberay_v2_08.gif')); return true;"
				onmouseup="selected='soberay_v2_08'; changeImages('soberay_v2_08', 'images/soberay_v2_08-over.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'); return true;">
				<img name="soberay_v2_08" src="images/soberay_v2_08.gif" width="135" height="25" border="0" alt=""></a></td>
		<td>
			<img src="images/soberay_v2_09.gif" width="1" height="25" alt=""></td>
		<td colspan="5">
			<a href="http://www.soberayandsons.com/Contact.aspx"
				onmouseover="toggleImages('soberay_v2_08', new Array('soberay_v2_10', 'images/soberay_v2_10-over.gif'), 'soberay_v2_12', new Array('soberay_v2_10', 'images/soberay_v2_10-over.gif'), 'soberay_v2_14', new Array('soberay_v2_10', 'images/soberay_v2_10-over.gif'), '', new Array('soberay_v2_10', 'images/soberay_v2_10-over.gif'));
return true;"
				onmouseout="toggleImages('soberay_v2_08', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_10', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10',
'images/soberay_v2_10-over.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_12', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12-over.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'),
'soberay_v2_14', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14-over.gif'), '', new Array('soberay_v2_10', 'images/soberay_v2_10.gif')); return true;"
				onmouseup="selected='soberay_v2_10'; changeImages('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10-over.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'); return true;">
				<img name="soberay_v2_10" src="images/soberay_v2_10.gif" width="165" height="25" border="0" alt=""></a></td>
		<td>
			<img src="images/soberay_v2_11.gif" width="1" height="25" alt=""></td>
		<td colspan="3">
			<a href="http://www.soberayandsons.com/Directions.aspx"
				onmouseover="toggleImages('soberay_v2_08', new Array('soberay_v2_12', 'images/soberay_v2_12-over.gif'), 'soberay_v2_10', new Array('soberay_v2_12', 'images/soberay_v2_12-over.gif'), 'soberay_v2_14', new Array('soberay_v2_12', 'images/soberay_v2_12-over.gif'), '', new Array('soberay_v2_12', 'images/soberay_v2_12-over.gif'));
return true;"
				onmouseout="toggleImages('soberay_v2_08', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_10', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10',
'images/soberay_v2_10-over.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_12', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12-over.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'),
'soberay_v2_14', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14-over.gif'), '', new Array('soberay_v2_12', 'images/soberay_v2_12.gif')); return true;"
				onmouseup="selected='soberay_v2_12'; changeImages('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12-over.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'); return true;">
				<img name="soberay_v2_12" src="images/soberay_v2_12.gif" width="131" height="25" border="0" alt=""></a></td>
		<td>
			<img src="images/soberay_v2_13.gif" width="1" height="25" alt=""></td>
		<td style="width: 125px">
			<a href="http://www.soberayandsons.com/Company.aspx"
				onmouseover="toggleImages('soberay_v2_08', new Array('soberay_v2_14', 'images/soberay_v2_14-over.gif'), 'soberay_v2_10', new Array('soberay_v2_14', 'images/soberay_v2_14-over.gif'), 'soberay_v2_12', new Array('soberay_v2_14', 'images/soberay_v2_14-over.gif'), '', new Array('soberay_v2_14', 'images/soberay_v2_14-over.gif'));
return true;"
				onmouseout="toggleImages('soberay_v2_08', new Array('soberay_v2_08', 'images/soberay_v2_08-over.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_10', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10',
'images/soberay_v2_10-over.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'), 'soberay_v2_12', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12-over.gif', 'soberay_v2_14', 'images/soberay_v2_14.gif'),
'soberay_v2_14', new Array('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14-over.gif'), '', new Array('soberay_v2_14', 'images/soberay_v2_14.gif')); return true;"
				onmouseup="selected='soberay_v2_14'; changeImages('soberay_v2_08', 'images/soberay_v2_08.gif', 'soberay_v2_10', 'images/soberay_v2_10.gif', 'soberay_v2_12', 'images/soberay_v2_12.gif', 'soberay_v2_14', 'images/soberay_v2_14-over.gif'); return true;">
				<img name="soberay_v2_14" src="images/soberay_v2_14.gif" width="124" height="25" border="0" alt=""></a></td>
		<td rowspan="22">
			<img src="images/soberay_v2_15.gif" width="6" height="197" alt=""></td>
		<td height="197" rowspan="22">
			</td>
		<td>
			<img src="images/spacer.gif" width="1" height="25" alt=""></td>
	</tr>
	<tr>
		<td colspan="13" rowspan="3">
			<img src="images/soberay_v2_17.gif" width="558" height="11" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="4" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="6" alt=""></td>
	</tr>
	<tr>
		<td width="558" height="13" colspan="13">
			<img src="images/spacer.gif" width="558" height="13" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="13" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="3">
            <img src="images/template-v2_preslice_temp_2.gif" width="235" height="21" /></td>
		<td rowspan="17">
			<img src="images/soberay_v2_22.gif" width="6" height="148" alt=""></td>
		<td width="6" height="148" rowspan="17">
			<img src="images/spacer.gif" width="6" height="148" alt=""></td>
		<td rowspan="17" style="width: 5px">
			<img src="images/soberay_v2_24.gif" width="4" height="148" alt=""></td>
		<td colspan="7" rowspan="3">
			<img src="images/soberay_v2_25.gif" width="307" height="21" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td style="height: 19px">
			<img src="images/spacer.gif" width="1" height="19" alt=""></td>
	</tr>
	<tr>
		<td width="235" height="112" colspan="3" rowspan="13" valign="top">
            <table style="width: 100%">
                <tr>
                    <td colspan="1" style="width: 3px">
                    </td>
                    <td colspan="2">
                        <span style="font-family: Franklin Gothic Medium"><span style="font-size: 12pt; color: #000000">
                            <strong>Keyword Search<br />
                            </strong><span style="font-family: Tahoma"><span style="font-size: 0.3em; color: #3c3c3c;">
                                &nbsp;</span></span></span></span></td>
                </tr>
                <tr style="font-family: Tahoma">
                    <td style="width: 3px">
                    </td>
                    <td style="width: 169px">
                        <asp:TextBox
                                ID="TextBox3" runat="server" AutoCompleteType="Disabled" Width="161px" TabIndex="1"></asp:TextBox></td>
                    <td>
                        <asp:Button
                ID="Button2" runat="server" BackColor="WhiteSmoke" BorderColor="DimGray" BorderStyle="Outset"
                BorderWidth="1px" Font-Names="Tahoma" Font-Size="8pt" Text="search" OnClick="Button2_Click" TabIndex="2" />&nbsp;</td>
                </tr>
                <tr style="font-family: Tahoma">
                    <td colspan="1" style="width: 3px;">
                    </td>
                    <td colspan="2" align="center">
                        <img src="images/soberay_v2_38.gif" width="174" height="1" /></td>
                </tr>
                <tr style="font-family: Tahoma">
                    <td colspan="1" style="width: 3px">
                    </td>
                    <td align="center" colspan="2">
                        <span style="font-size: 8pt">Welcome to Soberay and Sons, your rubber machinery experts</span></td>
                </tr>
            </table>
			</td>
        <td align="left" colspan="7" height="112" rowspan="13" valign="top">
            <span style="font-size: 0.55em"><table style="width: 100%">
                <tr>
                    <td colspan="1" style="width: 3px">
                    </td>
                    <td colspan="2">
                        <span style="font-family: Franklin Gothic Medium"><span style="font-size: 12pt; color: #000000">
                            <strong>
                            Sellers<br />
                            </strong><span style="font-family: Tahoma"><span style="font-size: 0.3em; color: #3c3c3c;">
                                &nbsp;</span></span></span></span></td>
                </tr>
                <tr>
                    <td colspan="1" style="width: 3px; height: 45px;">
                    </td>
                    <td colspan="2" style="height: 45px">
                        <asp:Panel ID="Panel3" runat="server" BorderColor="#f0f0f0" BorderWidth="1px" Height="65px"
                            ScrollBars="Vertical" Width="294px">
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="id" DataSourceID="adsSellers"
                            Width="275px">
                            <ItemTemplate>
                                <asp:Label ID="I" runat="server" Font-Size="7pt" Text='<%# Eval("id") + "." %>'></asp:Label>
                                <asp:Label
                                    ID="T" runat="server" Text='<%# Eval("name") %>' Font-Bold="False" Font-Size="9pt" Width="180px" CssClass="sell"></asp:Label>
                                <asp:HyperLink ID="HyperLink15" runat="server" CssClass="pics" Font-Names="Franklin Gothic Medium"
                                    Font-Size="9pt" NavigateUrl='<%# "~/Details_Sell.aspx?item=" + Eval("id") %>'>Full Details</asp:HyperLink><br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                            Text="No one wants to sell" Visible="False"></asp:Label></asp:Panel>
                        </td>
                </tr>
            </table>
            </span>
        </td>
		<td style="height: 1px">
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td style="height: 20px">
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td style="height: 20px">
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/soberay_v2_44.gif" width="235" height="15" alt=""></td>
		<td colspan="7">
			<img src="images/soberay_v2_45.gif" width="307" height="15" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="15" alt=""></td>
	</tr>
	<tr>
        <td colspan="16" rowspan="17" width="600" valign="top">
            <table style="width: 100%">
                <tr>
                    <td style="width: 5px">
                    </td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" Font-Bold="False" ForeColor="#C0C0FF" GroupingText="FEATURED RUBBER MACHINERY"
                            Width="100%">
                            <table style="width: 100%">
                                <tr>
                                    <td align="center" colspan="3" style="width: 550px">
                                        <asp:DataList ID="DataList1" runat="server" DataSourceID="adsNewItems" RepeatColumns="3"
                                            Width="540px" RepeatDirection="Horizontal">
                                            <ItemTemplate>
                                                <span style="color: #000000">
                                                    <table align="center" style="width: 165px" cellspacing="2">
                                                        <tr>
                                                            <td align="center" style="width: 149px;" valign="top">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText='<%# Eval("product_name") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="120px" ImageUrl='<%# Eval("image_1") %>' OnClick="ImageButton1_Click" Width="120px"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="width: 149px; height: 44px" valign="top">
                                                                <asp:Label ID="mfr" runat="server" ForeColor="#000000" Text='<%# Eval("manufacturer") %>'></asp:Label>
                                                                <asp:Label ID="size" runat="server" ForeColor="#000000" Text='<%# Eval("size") %>'></asp:Label>
                                                                <asp:Label ID="style" runat="server" ForeColor="#000000" Text='<%# Eval("style") %>'></asp:Label>
                                                                <asp:Label ID="type" runat="server" ForeColor="#000000" Text='<%# Eval("type") %>'></asp:Label><asp:Label ID="num" runat="server" Enabled="False" Text='<%# Eval("item_number") %>'
                                                                    Visible="False"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="width: 149px" valign="top">
                                                                - - - - - - - - - - - - - - -</td>
                                                        </tr>
                                                    </table>
                                                    </span>
                                            </ItemTemplate>
                                        </asp:DataList></td>
                                </tr>
                            </table>
                            
                        </asp:Panel>
                        &nbsp; &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink15" runat="server" CssClass="pics" NavigateUrl="~/All_Machinery.aspx">All Rubber Machinery</asp:HyperLink></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <span style="font-size: 0.8em">&nbsp;&nbsp; </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 5px; height: 470px">
                    </td>
                    <td valign="top">
                        <asp:Panel ID="Panel4" runat="server" Font-Bold="False" ForeColor="#C0C0FF" GroupingText="FEATURED TIRE MACHINERY"
                            Width="100%">
                            <table style="width: 100%">
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:DataList ID="DataList3" runat="server" DataSourceID="AccessDataSource1" RepeatColumns="3"
                                            RepeatDirection="Horizontal" Width="540px">
                                            <ItemTemplate>
                                                <span style="color: #000000">
                                                    <table align="center" cellspacing="2" style="width: 165px">
                                                        <tr>
                                                            <td align="center" style="width: 149px;" valign="top">
                                                                <asp:ImageButton ID="ImageButton2" runat="server" AlternateText='<%# Eval("product_name") %>'
                                                                    BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="120px" ImageUrl='<%# Eval("image_1") %>'
                                                                    OnClick="ImageButton2_Click" Width="120px" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="width: 149px; height: 44px" valign="top">
                                                                <asp:Label ID="mfr" runat="server" ForeColor="#000000" Text='<%# Eval("manufacturer") %>'></asp:Label>
                                                                <asp:Label ID="size" runat="server" ForeColor="#000000" Text='<%# Eval("size") %>'></asp:Label>
                                                                <asp:Label ID="style" runat="server" ForeColor="#000000" Text='<%# Eval("style") %>'></asp:Label>
                                                                <asp:Label ID="type" runat="server" ForeColor="#000000" Text='<%# Eval("type") %>'></asp:Label><asp:Label
                                                                    ID="num" runat="server" Enabled="False" Text='<%# Eval("item_number") %>' Visible="False"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="width: 149px" valign="top">
                                                                - - - - - - - - - - - - - - -</td>
                                                        </tr>
                                                    </table>
                                                </span>
                                            </ItemTemplate>
                                        </asp:DataList></td>
                                </tr>
                            </table>
                        </asp:Panel>
                        &nbsp; &nbsp;
                        <asp:HyperLink ID="HyperLink17" runat="server" CssClass="pics" NavigateUrl="~/Tire.aspx">More Tire Machinery</asp:HyperLink></td>
                    <td style="height: 470px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 5px">
                    </td>
                    <td style="width: 562px">
                        <asp:AccessDataSource ID="adsNewItems" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
                            SelectCommand="SELECT [manufacturer], [item_number], [size], [style], [type], [image_1], [product_name] FROM [PRODUCT] WHERE ([IS_new] = ?)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="IS_new" Type="Boolean" />
                            </SelectParameters>
                        </asp:AccessDataSource>
                        <asp:AccessDataSource ID="adsSellers" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
                            SelectCommand="SELECT [id], [name] FROM [SALES] ORDER BY id desc"></asp:AccessDataSource><asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
                            SelectCommand="SELECT [manufacturer], [item_number], [size], [style], [type], [image_1], [product_name] FROM [TIRE_MACHINERY] WHERE ([IS_new] = ?)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="true" Name="IS_new" Type="Boolean" />
                                </SelectParameters>
                            </asp:AccessDataSource>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td style="height: 20px">
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="20" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td style="height: 17px">
			<img src="images/spacer.gif" width="1" height="17" alt=""></td>
	</tr>
    <tr>
        <td colspan="3" rowspan="3" width="200">
            </td>
        <td>
        </td>
    </tr>
	<tr>
		<td style="height: 423px">
			<img src="images/spacer.gif" width="1" height="423" alt=""></td>
	</tr>
    <tr>
        <td style="height: 17px">
        </td>
    </tr>
	<tr>
		<td style="width: 19px">
			<img src="images/spacer.gif" width="18" height="1" alt=""></td>
		<td style="width: 175px">
			<img src="images/spacer.gif" width="174" height="1" alt=""></td>
		<td style="width: 9px">
			<img src="images/spacer.gif" width="8" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="14" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="135" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="99" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="6" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="6" height="1" alt=""></td>
		<td style="width: 5px">
			<img src="images/spacer.gif" width="4" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="50" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td style="width: 130px">
			<img src="images/spacer.gif" width="129" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td style="width: 125px">
			<img src="images/spacer.gif" width="124" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="6" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="22" height="1" alt=""></td>
		<td></td>
	</tr>
</table></form>
<!-- End ImageReady Slices -->
</body>
</html>
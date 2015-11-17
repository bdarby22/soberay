<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ibEdit = (ImageButton)sender;
        DataListItem dtlDataListItem = (DataListItem)ibEdit.NamingContainer;

        int itemnumber = Convert.ToInt32((((Label)dtlDataListItem.FindControl("num")).Text));
        
        Response.Redirect("Details.aspx?item=" + itemnumber);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>The Rubber Machinery Experts Welcome You To Soberay and Sons.com</title>
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
</head>
<body bgcolor="white" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="preloadImages();"><form runat=server id="Form1">
<!-- ImageReady Slices (template v2_preslice.psd) -->
<table id="Table_01" width="790" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="19" bgcolor="#f0f0f0" style="height: 10px">
			</td>
		<td style="height: 10px">
			<img src="images/spacer.gif" width="1" height="10" alt=""></td>
	</tr>
	<tr>
		<td colspan="19" style="height: 69px">
            <table style="width: 100%">
                <tr>
                    <td style="width: 453px">
                        &nbsp;<img src="images/soberaytitlebig.gif" /></td>
                    <td valign="top">
                        <strong><span style="font-size: 0.5em">&nbsp;<br />
                            <br />
                            <br />
                        </span></strong><span style="font-size: 8pt; color: #000000"><strong>The most reliable
                            name in international<br />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; rubber machinery for over 40 years</strong></span></td>
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
                <table id="Table1" width="174" border="0" cellpadding="0" cellspacing="0">
                    <tr>
		<td rowspan="2" style="width: 175px">
			<img src="images/soberay_v2_05.gif" width="174" height="29" alt=""></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_18.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" rowspan="3" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="master" NavigateUrl="~/Categories.aspx?type=mixer">Mixers</asp:HyperLink></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_26.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" rowspan="2" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="master" NavigateUrl="~/Categories.aspx?type=mill">Mills</asp:HyperLink></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_32.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="master" NavigateUrl="~/Categories.aspx?type=calender">Calenders</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_34.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="master" NavigateUrl="~/Categories.aspx?type=extruder">Extruders</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_36.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td style="width: 175px; height: 20px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="master" NavigateUrl="~/HPresses.aspx">Hydraulic Presses</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_38.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td style="width: 175px; height: 20px;">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="master" NavigateUrl="~/IPresses.aspx">Injection Presses</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_40.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td style="width: 175px; height: 20px;">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" CssClass="master" NavigateUrl="~/Tire.aspx">Tire Machinery</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_42.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" rowspan="2" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink8" runat="server" CssClass="master" NavigateUrl="~/Lab.aspx">Lab Equipment</asp:HyperLink></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_46.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink9" runat="server" CssClass="master" NavigateUrl="~/InnerTube.aspx">Inner Tube</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_49.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink10" runat="server" CssClass="master" NavigateUrl="~/Categories.aspx?type=silicone">Silicone</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_51.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td style="width: 175px; height: 20px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" CssClass="master" NavigateUrl="~/Misc.aspx">Miscellaneous</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_53.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" CssClass="master" NavigateUrl="~/Rebuilds.aspx">Re-Builds</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_55.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td height="20" style="width: 175px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" CssClass="master" NavigateUrl="http://www.rubbermachineryparts.com/">Spare Parts</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_57.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td style="width: 175px; height: 20px">
            &nbsp; &nbsp;&nbsp;
            <img src="images/bullet.gif" />
            &nbsp;
            <asp:HyperLink ID="HyperLink14" runat="server" CssClass="master" NavigateUrl="~/Liquid.aspx">Liquidations</asp:HyperLink></td>
                    </tr>
                    <tr>
		<td style="width: 175px">
			<img src="images/soberay_v2_59.gif" width="174" height="1" alt=""></td>
                    </tr>
                    <tr>
		<td style="width: 175px; height: 17px">
			<img src="images/soberay_v2_60.gif" width="174" height="17" alt=""></td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
		<td rowspan="36" style="width: 9px" valign="top">
			<img src="images/soberay_v2_06.gif" width="8" height="341" alt=""></td>
		<td rowspan="22">
			<img src="images/soberay_v2_07.gif" width="14" height="197" alt=""></td>
		<td>
			<a href="../SoberayandSons/Home.aspx"
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
			<a href="#"
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
			<a href="#"
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
			<a href="#"
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
			<img src="images/soberay_v2_21.gif" width="235" height="21" alt=""></td>
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
		<td>
			<img src="images/spacer.gif" width="1" height="19" alt=""></td>
	</tr>
	<tr>
		<td width="235" height="112" colspan="3" rowspan="13" valign="top">
            <table style="width: 100%">
                <tr>
                    <td style="width: 70px" align="center">
                        <img src="images/contactthumb2.gif" /></td>
                    <td>
                        <span style="font-size: 12pt; color: #000000; font-family: Franklin Gothic Medium"><strong>
                            Questions? Call</strong></span><br />
                        <span style="font-size: 0.5em">&nbsp;<br />
                        </span><span style="color: #000000; font-size: 8pt;">or </span>
                        <asp:HyperLink ID="HyperLink15" runat="server" CssClass="master" Font-Bold="True"
                            Font-Size="10pt" NavigateUrl="mailto:sales@soberaysons.com">Email</asp:HyperLink><span style="color: #000000"><span
                                style="font-size: 8pt"> us if you have any
                                questions, comments, or concerns.&nbsp; Call us at:<br />
                                <span style="font-size: 0.4em">&nbsp;<br />
                                </span></span>
                                <strong>1 - 216 - 337 - 1809</strong></span></td>
                </tr>
            </table>
			</td>
		<td width="180" height="112" colspan="3" rowspan="13" valign="top">
            <table style="width: 100%">
                <tr>
                    <td style="width: 4px">
                    </td>
                    <td>
                        <strong><span style="font-size: 12pt; color: #000000; line-height: 12pt; font-family: Franklin Gothic Medium">
                            Sell us
                            <br />
                            your equipment<br />
                        </span></strong><span style="font-size: 6pt">&nbsp;<br />
                        </span><span style="color: #000000; font-size: 8pt;">we would love to buy your used
                            rubber machinery.&nbsp; Fill out your <strong>name</strong> and <strong>email</strong>
                            then press continue</span></td>
                </tr>
            </table>
			</td>
		<td rowspan="13">
			<img src="images/soberay_v2_30.gif" width="1" height="112" alt=""></td>
		<td width="126" height="112" colspan="3" rowspan="13" valign="top" align="left">
            <table style="width: 100%" cellspacing="0">
                <tr>
                    <td valign="bottom">
                        &nbsp; <strong><span style="color: dimgray">name:</span></strong></td>
                </tr>
                <tr>
                    <td valign="top">
                        &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Small" Width="101px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        &nbsp; <span style="color: dimgray"><strong>email:</strong></span></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Small" Width="101px"></asp:TextBox></td>
                </tr>
            </table>
            <span style="font-size: 0.55em">&nbsp; &nbsp;&nbsp;<br />
            </span><span style="font-size: 0.65em">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;</span><asp:Button
                ID="Button1" runat="server" BackColor="WhiteSmoke" BorderColor="DimGray" BorderStyle="Outset"
                BorderWidth="1px" Font-Names="Tahoma" Font-Size="8pt" Text="continue" /></td>
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
                    <td style="width: 562px">
                        <asp:Panel ID="Panel1" runat="server" Font-Bold="False" ForeColor="#C0C0FF" GroupingText="NEW PRODUCTS"
                            Width="100%">
                            <table style="width: 100%">
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:DataList ID="DataList1" runat="server" DataSourceID="adsNewItems" RepeatColumns="3"
                                            Width="540px" RepeatDirection="Horizontal">
                                            <ItemTemplate>
                                                <span style="color: #000000">
                                                    <table align="center" style="width: 165px" cellspacing="2">
                                                        <tr>
                                                            <td align="center" style="width: 149px;" valign="top">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText='<%# Eval("image1_ALT") %>' BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="120px" ImageUrl='<%# Eval("image_1") %>' OnClick="ImageButton1_Click" Width="120px"/></td>
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
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 5px">
                    </td>
                    <td style="width: 562px">
                        <asp:AccessDataSource ID="adsNewItems" runat="server" DataFile="App_Data/xSobesInventoryx.mdb"
                            SelectCommand="SELECT [manufacturer], [item_number], [size], [style], [type], [image_1], [image1_ALT] FROM [PRODUCT] WHERE ([IS_new] = ?)">
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
        <td colspan="3" rowspan="3" width="200" height="400">
            &nbsp;</td>
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
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Extruders.aspx.cs" Inherits="Calenders" Title="Rubber Extruders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">COLD FEED EXTRUDERS</asp:Label></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <span style="font-size: 0.4em">&nbsp;&nbsp; </span>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="item_number" DataSourceID="adsRollTwo"
        Width="585px">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                        valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" bgcolor="#f0f0f0" colspan="2" valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </AlternatingItemTemplate>
    </asp:DataList><span style="font-size: 0.4em"> &nbsp;&nbsp; </span><span style="font-size: 0.65em">
    </span>
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="Label222" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">HOT FEED EXTRUDERS</asp:Label></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <span style="font-size: 0.4em">&nbsp; </span>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="item_number" DataSourceID="adsRollThree"
        Width="585px">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                        valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" bgcolor="#f0f0f0" colspan="2" valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </AlternatingItemTemplate>
    </asp:DataList><span style="font-size: 0.4em"><span>&nbsp;</span><br />
    </span>
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">PIN BARREL EXTRUDERS</asp:Label></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <span style="font-size: 0.4em">&nbsp; </span>
    <asp:DataList ID="DataList3" runat="server" DataKeyField="item_number" DataSourceID="adsRollFour"
        Width="585px">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                        valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" bgcolor="#f0f0f0" colspan="2" valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </AlternatingItemTemplate>
    </asp:DataList><span style="font-size: 4pt">&nbsp; <span></span></span>
    <table style="font-size: 4pt">
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">DROP EXTRUDERS</asp:Label></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <span style="font-size: 0.4em">&nbsp; </span>
    <asp:DataList ID="DataList4" runat="server" DataKeyField="item_number" DataSourceID="adsdrop"
        Width="585px">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                        valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <table>
                <tr>
                    <td style="width: 18px">
                    </td>
                    <td align="left" bgcolor="#f0f0f0" colspan="2" valign="top">
                        <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                            Text='<%# Eval("item_number") %>'></asp:HyperLink>
                        -
                        <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                        <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                        <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                </tr>
            </table>
        </AlternatingItemTemplate>
    </asp:DataList><span style="font-size: 0.4em"><span><span style="font-size: 4pt">&nbsp;
        <span></span></span>
        <table style="font-size: 4pt">
            <tr>
                <td style="border-bottom: darkgray 1px dashed" valign="top">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">TRIPLEX EXTRUDERS</asp:Label></td>
                <td style="border-bottom-style: none" valign="top">
                </td>
            </tr>
        </table>
        <span style="font-size: 0.4em">&nbsp; </span>
        <asp:DataList ID="DataList9" runat="server" DataKeyField="item_number" DataSourceID="adsTriplex"
        Width="585px" Font-Size="9pt">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 18px">
                        </td>
                        <td align="left" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                        valign="top">
                            <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                                Text='<%# Eval("item_number") %>'></asp:HyperLink>
                            -
                            <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                            <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                            <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <table>
                    <tr>
                        <td style="width: 18px">
                        </td>
                        <td align="left" bgcolor="#f0f0f0" colspan="2" valign="top">
                            <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                                Text='<%# Eval("item_number") %>'></asp:HyperLink>
                            -
                            <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                            <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                            <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></td>
                    </tr>
                </table>
            </AlternatingItemTemplate>
        </asp:DataList><span style="font-size: 0.4em"><span> </span></span>&nbsp;</span></span><asp:AccessDataSource ID="adsRollTwo" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '%cold feed%')) AND IS_ACCESS = false ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="extruder" Name="type" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="adsRollThree" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '%hot feed%')) AND IS_ACCESS = false ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="extruder" Name="?" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="adsRollFour" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '%pin%')) AND IS_ACCESS = false ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="extruder" Name="?" />
        </SelectParameters>
    </asp:AccessDataSource><asp:AccessDataSource ID="adsdrop" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '%drop%')) AND IS_ACCESS = false ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="extruder" Name="type" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="adsTriplex" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '%triplex%')) and IS_ACCESS = false ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="extruder" Name="type" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <br />
    <asp:UpdatePanel id="UpdatePanel2" runat="server" RenderMode="Inline">
        <contenttemplate>
<asp:Panel id="pOthers" runat="server" __designer:wfdid="w9"><TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="Label1" runat="server" ForeColor="#8080FF" Font-Size="14px" Font-Bold="True" __designer:wfdid="w10"></asp:Label></TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE><SPAN style="FONT-SIZE: 0.4em">&nbsp;</SPAN><asp:DataList id="DataList5" runat="server" Width="585px" DataSourceID="adsAnumber" DataKeyField="item_number" __designer:wfdid="w11"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" __designer:wfdid="w107" Text='<%# Eval("item_number") %>'></asp:HyperLink> -&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" __designer:wfdid="w110" Text='<%# Eval("style") %>'></asp:Label> <asp:Label id="size" runat="server" __designer:wfdid="w109" Text='<%# Eval("size") %>'></asp:Label> </TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" __designer:wfdid="w111" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="style" runat="server" ForeColor="Black" __designer:wfdid="w114" Text='<%# Eval("style") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" __designer:wfdid="w113" Text='<%# Eval("size") %>'></asp:Label> </TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:AccessDataSource id="adsAnumber" runat="server" SelectCommand="SELECT [item_number], [manufacturer], [size], [style] FROM [PRODUCT] WHERE ([type] = 'extruder') AND ([IS_ACCESS] = true)" DataFile="~/App_Data/xSobesInventoryx.mdb" __designer:wfdid="w12"></asp:AccessDataSource></asp:Panel> 
</contenttemplate>
    </asp:UpdatePanel>
    &nbsp;
</asp:Content>


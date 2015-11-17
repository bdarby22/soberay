<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Calenders.aspx.cs" Inherits="Calenders" Title="Rubber Calenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">2 - ROLL CALENDERS</asp:Label></td>
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
                <asp:Label ID="Label222" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">3 - ROLL CALENDERS</asp:Label></td>
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
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">4 - ROLL CALENDERS</asp:Label></td>
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
    </asp:DataList><asp:AccessDataSource ID="adsRollTwo" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '2%'))  ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="calender" Name="type" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="adsRollThree" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '3%')) AND IS_ACCESS = false  ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="calender" Name="?" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="adsRollFour" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style] FROM [PRODUCT] WHERE (([type] = ?) AND ([style] like '4%')) AND IS_ACCESS = false  ORDER BY item_number">
        <SelectParameters>
            <asp:Parameter DefaultValue="calender" Name="?" />
        </SelectParameters>
    </asp:AccessDataSource>
    <br />
    <asp:UpdatePanel id="UpdatePanel2" runat="server" RenderMode="Inline">
        <contenttemplate>
<asp:Panel id="pOthers" runat="server"><TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="Label1" runat="server" ForeColor="#8080FF" Font-Size="14px" Font-Bold="True"></asp:Label></TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE><SPAN style="FONT-SIZE: 0.4em">&nbsp;</SPAN><asp:DataList id="DataList5" runat="server" Width="585px" DataSourceID="adsAnumber" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> -&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label> <asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label> </TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label> </TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:AccessDataSource id="adsAnumber" runat="server" SelectCommand="SELECT [item_number], [manufacturer], [size], [style] FROM [PRODUCT] WHERE ([type] = 'calender') AND ([IS_ACCESS] = true)  ORDER BY item_number" DataFile="~/App_Data/xSobesInventoryx.mdb"></asp:AccessDataSource></asp:Panel> 
</contenttemplate>
    </asp:UpdatePanel>
    &nbsp;
</asp:Content>


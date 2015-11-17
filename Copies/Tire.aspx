<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tire.aspx.cs" Inherits="Tire" Title="Tire Machinery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><form runat="server">
    <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>
    <span style="font-size: 0.4em"><table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top" width="392">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
            <td valign="top">
                </td>
        </tr>
    </table>
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <contenttemplate>
<TABLE style="WIDTH: 100%"><TBODY><TR><TD style="WIDTH: 545px"><SPAN style="FONT-SIZE: 9pt; COLOR: darkgray"><TABLE width="100%"><TBODY><TR><TD vAlign=top><asp:Panel id="Panel1" runat="server" __designer:wfdid="w137">&nbsp; Select a Category: <asp:DropDownList id="DropDownList1" runat="server" Width="259px" Font-Size="Small" __designer:wfdid="w138" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="adsDDL" DataTextField="type" DataValueField="type" Font-Names="Tahoma" AppendDataBoundItems="True"><asp:ListItem>- Make a selection -</asp:ListItem>
</asp:DropDownList></asp:Panel></TD><TD><asp:UpdateProgress id="UpdateProgress1" runat="server" __designer:dtid="2533274790395913" __designer:wfdid="w139" AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="100"><ProgressTemplate __designer:dtid="2533274790395914">
<SPAN style="FONT-SIZE: 9pt"><SPAN style="COLOR: #a9a9a9"><SPAN style="FONT-SIZE: 0.2em">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><BR /></SPAN><SPAN style="FONT-SIZE: 8pt; COLOR: red"><STRONG>Searching.....</STRONG></SPAN></SPAN><SPAN style="FONT-SIZE: 8pt; COLOR: red"><STRONG> </STRONG></SPAN>
</ProgressTemplate>
</asp:UpdateProgress></TD></TR></TBODY></TABLE><SPAN style="FONT-SIZE: 0.4em">&nbsp;</SPAN><asp:DataList id="DataList1" runat="server" Width="570px" Font-Size="9pt" __designer:wfdid="w130" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "../SoberayandSons/Details_Tire.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" __designer:wfdid="w160" Text='<%# Eval("item_number") %>' Target="_blank"></asp:HyperLink> - <asp:Label id="mfr" runat="server" ForeColor="#000000" __designer:wfdid="w165" Text='<%# Eval("manufacturer") %>'></asp:Label> <asp:Label id="size" runat="server" ForeColor="#000000" __designer:wfdid="w166" Text='<%# Eval("size") %>'></asp:Label> <asp:Label id="style" runat="server" ForeColor="Black" __designer:wfdid="w167" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE style="HEIGHT: 1px"><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "../SoberayandSons/Details_Tire.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" __designer:wfdid="w168" Text='<%# Eval("item_number") %>' Target="_blank"></asp:HyperLink> - <asp:Label id="mfr" runat="server" ForeColor="#000000" __designer:wfdid="w169" Text='<%# Eval("manufacturer") %>'></asp:Label> <asp:Label id="size" runat="server" ForeColor="#000000" __designer:wfdid="w170" Text='<%# Eval("size") %>'></asp:Label> <asp:Label id="style" runat="server" ForeColor="Black" __designer:wfdid="w171" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList><SPAN style="FONT-SIZE: 0.4em">&nbsp;<BR /></SPAN></SPAN><asp:AccessDataSource id="adsItems" runat="server" __designer:wfdid="w131" DataFile="~/App_Data/xSobesInventoryx.mdb" SelectCommand="SELECT [item_number], [size], [style], [manufacturer] FROM [TIRE_MACHINERY] WHERE ([type] = ?)"><SelectParameters>
<asp:Parameter Type="String" Name="type"></asp:Parameter>
</SelectParameters>
</asp:AccessDataSource> <asp:AccessDataSource id="adsDDL" runat="server" __designer:wfdid="w142" DataFile="~/App_Data/xSobesInventoryx.mdb" SelectCommand="Select distinct type from tire_machinery"></asp:AccessDataSource><BR />&nbsp; </TD></TR></TBODY></TABLE>
</contenttemplate>
            <triggers>
<asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
</triggers>
        </asp:UpdatePanel>
    </span>
</form></asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Silicone.aspx.cs" Inherits="Categories" Title="Inner Tube" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF"></asp:Label></TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE>
    <span style="font-size: 0.4em">&nbsp;&nbsp;</span><asp:DataList id="DataList1" runat="server" Width="585px" DataKeyField="item_number" DataSourceID="adsNumber"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> -&nbsp;<asp:Label id="Label1" runat="server" Font-Bold="True" Text='<%# Eval("type") %>'></asp:Label><STRONG>:</STRONG> <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> -&nbsp;<asp:Label id="Label2" runat="server" Font-Bold="True" Text='<%# Eval("type") %>'></asp:Label><STRONG>:</STRONG> <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;
    <asp:AccessDataSource id="adsNumber" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb" SelectCommand="SELECT [item_number], [size], [style], [manufacturer], [type] FROM [PRODUCT] WHERE ([IS_silicone] = ?) ORDER BY item_number"><SelectParameters>
<asp:Parameter Type="Boolean" DefaultValue="true" Name="IS_silicone"></asp:Parameter>
</SelectParameters>
</asp:AccessDataSource> 
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


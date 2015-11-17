<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IPresses.aspx.cs" Inherits="Categories" Title="Rubber Injection Presses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
        <ContentTemplate>
<SPAN style="FONT-SIZE: 8pt; COLOR: darkgray"><SPAN style="FONT-SIZE: 0.4em"><SPAN style="FONT-SIZE: 9pt"><TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="lblType" runat="server" ForeColor="#8080FF" Font-Size="14px" Font-Bold="True"></asp:Label> </TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE></SPAN>&nbsp;</SPAN></SPAN><BR /><asp:DataList id="DataList1" runat="server" Width="585px" DataSourceID="adsNumber" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;&nbsp; <BR /><asp:AccessDataSource id="adsNumber" runat="server" SelectCommand="SELECT [manufacturer], [quantity], [size], [style], [type], [item_number] FROM [PRODUCT] WHERE ([type] = 'Injection Press')  ORDER BY item_number" DataFile="~/App_Data/xSobesInventoryx.mdb"></asp:AccessDataSource>&nbsp;&nbsp;&nbsp; 
</ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>


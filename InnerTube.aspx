<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InnerTube.aspx.cs" Inherits="Categories" Title="Rubber Inner Tubes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
        <ContentTemplate>
<SPAN style="FONT-SIZE: 8pt; COLOR: darkgray"><SPAN style="FONT-SIZE: 0.4em"><SPAN style="FONT-SIZE: 10pt"></SPAN><SPAN style="FONT-SIZE: 9pt"><TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF"></asp:Label> </TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE></SPAN>&nbsp;</SPAN></SPAN><BR /><asp:DataList id="DataList1" runat="server" Width="585px" DataKeyField="item_number" DataSourceID="adsNumber"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;&nbsp; <asp:AccessDataSource id="adsNumber" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb" SelectCommand="SELECT [manufacturer], [quantity], [size], [style], [type], [item_number] FROM [PRODUCT] WHERE ([type] = 'Inner Tube') ORDER BY item_number"></asp:AccessDataSource>&nbsp;&nbsp;&nbsp; 
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
            <br />
            <br />
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


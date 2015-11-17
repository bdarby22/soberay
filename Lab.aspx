<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Lab.aspx.cs" Inherits="Categories" Title="Rubber Lab Equipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
            <contenttemplate>
<SPAN style="FONT-SIZE: 8pt; COLOR: darkgray"><SPAN style="FONT-SIZE: 0.4em"><SPAN style="FONT-SIZE: 9pt"><TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="lblType" runat="server" __designer:wfdid="w26" ForeColor="#8080FF" Font-Size="14px" Font-Bold="True"></asp:Label> </TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE></SPAN></SPAN></SPAN><SPAN style="FONT-SIZE: 0.4em">&nbsp;<BR /></SPAN><asp:DataList id="DataList1" runat="server" Width="585px" __designer:wfdid="w27" DataSourceID="adsNumber" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="typ" runat="server" Font-Bold="True" Text='<%# Eval("type") %>'></asp:Label>: <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label>&nbsp; </TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="typ" runat="server" Font-Bold="True" Text='<%# Eval("type") %>'></asp:Label>: <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;<BR /><asp:AccessDataSource id="adsNumber" runat="server" __designer:wfdid="w28" SelectCommand="SELECT [type], [style], [size], [manufacturer], [item_number], [IS_Lab] FROM [PRODUCT] WHERE ([IS_Lab] = ?)" DataFile="~/App_Data/xSobesInventoryx.mdb"><SelectParameters>
<asp:Parameter Type="Boolean" DefaultValue="true" Name="IS_Lab"></asp:Parameter>
</SelectParameters>
</asp:AccessDataSource>&nbsp;&nbsp;&nbsp; 
</contenttemplate>
        </asp:UpdatePanel>
    
</asp:Content>

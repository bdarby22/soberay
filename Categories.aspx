<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Categories.aspx.cs" Inherits="Categories" Title="Rubber Mills, Mixers, Calenders, and Extruders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
            <contenttemplate>
<TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="lblType" runat="server" ForeColor="#8080FF" Font-Size="14px" Font-Bold="True"></asp:Label> </TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE><SPAN style="FONT-SIZE: 0.4em">&nbsp;&nbsp;</SPAN><asp:DataList id="DataList1" runat="server" Width="585px" DataSourceID="adsNumber" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList><asp:AccessDataSource id="adsNumber" runat="server" SelectCommand="SELECT [manufacturer], [quantity], [size], [style], [type], [item_number] FROM [PRODUCT] WHERE ([type] = ?) AND IS_ACCESS = false  ORDER BY item_number" DataFile="~/App_Data/xSobesInventoryx.mdb"><SelectParameters>
<asp:QueryStringParameter Type="String" Name="type" QueryStringField="type"></asp:QueryStringParameter>
</SelectParameters>
</asp:AccessDataSource> 
</contenttemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel id="UpdatePanel2" runat="server" RenderMode="Inline">
            <contenttemplate>
<asp:Panel id="pOthers" runat="server"><TABLE><TBODY><TR><TD style="BORDER-BOTTOM: darkgray 1px dashed" vAlign=top><asp:Label id="Label1" runat="server" ForeColor="#8080FF" Font-Size="14px" Font-Bold="True"></asp:Label></TD><TD style="BORDER-BOTTOM-STYLE: none" vAlign=top></TD></TR></TBODY></TABLE><SPAN style="FONT-SIZE: 0.4em">&nbsp;</SPAN><asp:DataList id="DataList5" runat="server" Width="585px" DataSourceID="adsAnumber" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>'></asp:HyperLink> - <asp:Label id="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>&nbsp;<asp:Label id="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>&nbsp;<asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</AlternatingItemTemplate>
</asp:DataList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:AccessDataSource id="adsAnumber" runat="server" SelectCommand="SELECT [item_number], [manufacturer], [size], [style] FROM [PRODUCT] WHERE ([type] = ?) AND ([IS_ACCESS] = true)  ORDER BY item_number" DataFile="~/App_Data/xSobesInventoryx.mdb"><SelectParameters>
<asp:QueryStringParameter Type="String" Name="type" QueryStringField="type"></asp:QueryStringParameter>
</SelectParameters>
</asp:AccessDataSource></asp:Panel> 
</contenttemplate>
        </asp:UpdatePanel>
    
</asp:Content>

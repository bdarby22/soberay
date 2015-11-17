<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Tire.aspx.cs" Inherits="Tire" Title="Tire Machinery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       
            <table>
                <tr>
                    <td style="border-bottom: darkgray 1px dashed; width: 378px; height: 20px;" valign="top">
                        <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF"></asp:Label>&nbsp; 
                    </td>
                    <td valign="top" style="height: 20px">
                        <asp:UpdateProgress id="UpdateProgress1" runat="server">
                            <progresstemplate>
&nbsp; &nbsp;&nbsp; <STRONG><SPAN style="COLOR: red">Searching.....</SPAN></STRONG>
</progresstemplate>
                        </asp:UpdateProgress>
                    </td>
                </tr>
            </taBle>
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <contenttemplate>
<asp:Label id="Label2" runat="server" ForeColor="DarkGray" Text="Select a Category:"></asp:Label>&nbsp;<asp:DropDownList id="DropDownList1" runat="server" Width="259px" AutoPostBack="True" DataSourceID="adsDDL" DataTextField="type" DataValueField="type" AppendDataBoundItems="True"><asp:ListItem>- Make a Selection -</asp:ListItem>
</asp:DropDownList><BR /><BR /><SPAN style="FONT-SIZE: 0.4em">&nbsp; </SPAN><BR /><asp:DataList id="DataList1" runat="server" Width="570px" Font-Size="9pt" DataKeyField="item_number"><ItemTemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left colSpan=2><asp:HyperLink id="H" runat="server" NavigateUrl='<%# "~/Details_Tire.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>' Target="_blank"></asp:HyperLink> - <asp:Label id="mfr" runat="server" ForeColor="#000000" Text='<%# Eval("manufacturer") %>'></asp:Label> <asp:Label id="size" runat="server" ForeColor="#000000" Text='<%# Eval("size") %>'></asp:Label> <asp:Label id="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
<AlternatingItemTemplate>
<TABLE><TR><TD style="WIDTH: 18px"></TD><TD style="BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black" vAlign=top align=left bgColor=#f0f0f0 colSpan=2><asp:HyperLink id="H1" runat="server" NavigateUrl='<%# "~/Details_Tire.aspx?item=" + Eval("item_number") %>' CssClass="pics" ForeColor="Blue" Text='<%# Eval("item_number") %>' Target="_blank"></asp:HyperLink> - <asp:Label id="mfr1" runat="server" ForeColor="#000000" Text='<%# Eval("manufacturer") %>'></asp:Label> <asp:Label id="size1" runat="server" ForeColor="#000000" Text='<%# Eval("size") %>'></asp:Label> <asp:Label id="style1" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label></TD></TR></TAbLE>
</AlternatingItemTemplate>
</asp:DataList> <asp:AccessDataSource id="adsItems" runat="server" SelectCommand="SELECT [item_number], [size], [style], [manufacturer] FROM [TIRE_MACHINERY] WHERE ([type] = ?)" DataFile="~/App_Data/xSobesInventoryx.mdb">
            <SelectParameters>
                <asp:Parameter Name="type" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource> <asp:AccessDataSource id="adsDDL" runat="server" SelectCommand="Select distinct type from tire_machinery" DataFile="~/App_Data/xSobesInventoryx.mdb"></asp:AccessDataSource>
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
</contenttemplate>
        </asp:UpdatePanel>&nbsp; &nbsp;
        &nbsp;&nbsp;<br />
        <br />

    
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Misc.aspx.cs" Inherits="Categories" Title="Miscellaneous Rubber Machinery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
        <table>
            <tr>
                <td style="border-bottom: darkgray 1px dashed" valign="top">
                    <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF"></asp:Label><span
                        style="color: darkgray"></span></td>
            </tr>
        </table>
        <span style="font-size: 0.4em">&nbsp;&nbsp;
            <br />
        </span>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="item_number" DataSourceID="AccessDataSource1"
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
                            <asp:Label ID="mfr" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <table>
                    <tr>
                        <td style="width: 18px">
                        </td>
                        <td align="left" bgcolor="#f0f0f0" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                            valign="top">
                            <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                                Text='<%# Eval("item_number") %>'></asp:HyperLink>
                            -
                            <asp:Label ID="mfr" runat="server" Text='<%# Eval("description") %>'></asp:Label></td>
                    </tr>
                </table>
            </AlternatingItemTemplate>
        </asp:DataList>&nbsp;
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
            SelectCommand="SELECT [description], [item_number] FROM [PRODUCT] WHERE ([type] = ?)">
            <SelectParameters>
                <asp:Parameter DefaultValue="miscellaneous" Name="type" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    
</asp:Content>

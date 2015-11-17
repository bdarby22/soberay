<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="All_Machinery.aspx.cs" Inherits="All_Machinery" Title="All Rubber Machinery - New and Used" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">ALL RUBBER MACHINERY</asp:Label><span
                    style="color: darkgray"></span></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <span style="font-size: 0.4em">&nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server"
        DataKeyField="item_number" DataSourceID="AccessDataSource1" Font-Size="9pt" Width="585px">
        <ItemTemplate>
            <table>
                <tbody>
                    <tr>
                        <td style="width: 18px">
                        </td>
                        <td align="left" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                            valign="top">
                            <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                                Text='<%# Eval("item_number") %>'></asp:HyperLink>
                            -
                            <asp:Label ID="ty" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Black"
                                Text='<%# Eval("type") %>'></asp:Label><strong>:</strong>
                            <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                            <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                            <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <table>
                <tbody>
                    <tr>
                        <td style="width: 18px">
                        </td>
                        <td align="left" bgcolor="#f0f0f0" colspan="2" style="border-bottom-width: 1px; border-bottom-color: black"
                            valign="top">
                            <asp:HyperLink ID="H" runat="server" CssClass="pics" ForeColor="Blue" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>'
                                Text='<%# Eval("item_number") %>'></asp:HyperLink>
                            -
                            <asp:Label ID="ty" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Black"
                                Text='<%# Eval("type") %>'></asp:Label><strong>: </strong>
                            <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label>
                            <asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                            <asp:Label ID="style" runat="server" ForeColor="Black" Text='<%# Eval("style") %>'></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </AlternatingItemTemplate>
    </asp:DataList></span><br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [manufacturer], [quantity], [style], [size], [type], [item_number] FROM [PRODUCT] ORDER BY [item_number]">
    </asp:AccessDataSource>
</asp:Content>


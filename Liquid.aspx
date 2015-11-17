<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Liquid.aspx.cs" Inherits="Details" Title="Rubber Plant Liquidations" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">LIQUIDATIONS</asp:Label><span
                    style="color: darkgray"></span></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" Width="576px">
        <ItemTemplate>
            <span style="font-size: 0.65em"></span>
            <table cellspacing="3" style="width: 553px">
                <tr>
                    <td style="width: 21px" valign="bottom">
                        <asp:Label ID="n" runat="server" Font-Bold="True" Text='<%# Eval("ID") + "." %>'></asp:Label></td>
                    <td bgcolor="#f0f0f0" style="width: 128px; border-bottom: black 1px solid" valign="bottom">
                        Plant</td>
                    <td bgcolor="#f0f0f0" colspan="2" style="width: 128px; border-bottom: black 1px solid"
                        valign="bottom">
                        Details</td>
                    <td colspan="1">
                    </td>
                    <td colspan="3">
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px" valign="top">
                    </td>
                    <td style="width: 128px" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td style="width: 10px; height: 14px">
                                </td>
                                <td style="height: 14px" valign="top">
                                    <asp:Label ID="mfr" runat="server" Text='<%# Eval("plant_name") %>'></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="5">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 10px; height: 16px">
                                </td>
                                <td style="width: 529px; height: 16px">
                                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("details") %>'></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 21px; height: 15px">
                    </td>
                    <td style="width: 128px; height: 15px">
                    </td>
                    <td colspan="2" style="width: 128px; height: 15px">
                    </td>
                    <td style="width: 128px; height: 15px">
                    </td>
                    <td style="width: 128px; height: 15px">
                    </td>
                    <td style="width: 3px; height: 15px">
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 18px">
                                    <img src="images/emailicon.gif" width="18" height="18" /></td>
                                <td align="left" valign="top">
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="pics" Font-Size="14px" ForeColor="Blue"
                                        NavigateUrl='mailto:sales@soberaysons.com?subject=Liquidations'>More Information</asp:HyperLink></td>
                            </tr>
                        </table>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [Plant_Name], [Details], [ID] FROM [LIQUIDATIONS]">
    </asp:AccessDataSource>
</asp:Content>


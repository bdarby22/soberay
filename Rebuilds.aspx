<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rebuilds.aspx.cs" Inherits="Rebuilds" Title="Rubber Machinery ReBuilds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">RE-BUILDS</asp:Label><span
                    style="color: darkgray"></span></td>
            <td style="border-bottom-style: none" valign="top">
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td>
                <div align="left">
                    At Soberay and Sons, we have been supplying the rubber industry with quality rebuilds and
                        used rubber equipment for 40 years. Through superior knowledge and experience, Soberay and
                            Sons is one of the most capable and dependable supplier of rubber processing machinery
                            in the world.</div>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td style="width: 17px">
                        </td>
                        <td style="width: 335px">
                    We can rebuild anyone of our:</td>
                    </tr>
                    <tr>
                        <td style="width: 17px; height: 117px;">
                        </td>
                        <td style="width: 335px; height: 117px;">
                            <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Square" DisplayMode="HyperLink" Font-Overline="False" Font-Size="10pt">
                                <asp:ListItem Value="~/Categories.aspx?type=mixer">Mixers</asp:ListItem>
                                <asp:ListItem Value="~/Categories.aspx?type=mill">Mills</asp:ListItem>
                                <asp:ListItem Value="~/Categories.aspx?type=calender">Calenders</asp:ListItem>
                                <asp:ListItem Value="~/HPresses.aspx">Hydraulic Presses</asp:ListItem>
                                <asp:ListItem Value="~/IPresses.aspx">Injection Presses</asp:ListItem>
                                <asp:ListItem Value="~/Tire.aspx">Tire Machinery</asp:ListItem>
                                <asp:ListItem Value="~/Lab.aspx">Lab Equipment</asp:ListItem>
                            </asp:BulletedList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Directions.aspx.cs" Inherits="Directions" Title="Directions to Soberay and Sons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed; height: 18px" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">FIND 
                SOBERAY AND SONS</asp:Label><span
                    style="color: darkgray"> </span>
            </td>
        </tr>
    </table>
    <span style="font-size: 0.4em">&nbsp;<br />
        <span style="font-size: 9pt">
            <table style="width: 333px; height: 17px; border-right: #f0f0f0 1px solid; border-top: #f0f0f0 1px solid; border-left: #f0f0f0 1px solid; border-bottom: #f0f0f0 1px solid;">
                <tr>
                    <td colspan="3" style="width: 515px">
                        <strong>Shop Address:</strong></td>
                    <td colspan="1" style="width: 109px">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 515px;font-family: 'Franklin Gothic Medium';">
                        5500 Walworth Ave.</td>
                    <td colspan="1" style="width: 109px">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="pics" NavigateUrl="http://www.mapquest.com/directions/main.adp?go=1&do=nw&rmm=1&un=m&cl=EN&qq=hltF3hzNT9tNhURP0HLlhh9UYBmHRqyBceg4Gkon14D8uewLk7pjHQ%253d%253d&ct=NA&rsres=1&1y=US&1ffi=&1l=&1g=&1pl=&1v=&1n=&1pn=&1a=5300+Riverside+Dr&1c=Cleveland&1s=oh&1z=44135&2y=US&2ffi=&2l=&2g=&2pl=&2v=&2n=&2pn=&2a=5500+walworth+ave&2c=cleveland&2s=oh&2z=44102&r=f"
                            Target="_blank" Font-Names="Franklin Gothic Medium">From the Airport</asp:HyperLink></td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 515px;font-family: 'Franklin Gothic Medium';">
                        Cleveland, OH 44102</td>
                    <td colspan="1" style="width: 109px">
                    </td>
                </tr>
            </table>
            &nbsp;</span></span>

</asp:Content>


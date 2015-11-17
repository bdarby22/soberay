<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sell.aspx.cs" Inherits="Sell" Title="We buy rubber machinery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="border-bottom: darkgray 1px dashed" valign="top">
                <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#8080FF">We buy used rubber machinery</asp:Label><span
                    style="color: darkgray"></span></td>
        </tr>
    </table>
    <span style="font-size: 0.4em">
        <br />
    </span>
    <asp:Label ID="lblType2" runat="server" Font-Bold="False" Font-Size="9pt" ForeColor="Black"></asp:Label><asp:Label
        ID="Label1" runat="server" Font-Bold="False" Font-Size="9pt" ForeColor="Black">, Soberay and Sons is looking foward to doing business with you.  Just fill out the rest of the information and we will get back to you as soon as possible.</asp:Label><br />
    <span style="font-size: 0.4em">&nbsp;</span><table cellpadding="1">
        <tr>
            <td style="width: 158px; height: 16px">
                <strong><span style="color: #000000">Required Information</span></strong></td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 158px; height: 16px">
                Your E-mail:</td>
            <td style="width: 100px; height: 16px">
                <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px; height: 16px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"
                    Font-Bold="True" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" ErrorMessage="!" Font-Bold="True" ControlToValidate="txtEmail"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 158px">
                Your Company:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"
                    Font-Bold="True" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3">
                <span style="font-size: 0.4em">&nbsp; </span>
            </td>
        </tr>
        <tr>
            <td style="width: 158px">
                Manufacturer:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required"
                    Font-Bold="True" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 158px">
                Location of Equipment:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required"
                    Font-Bold="True" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 158px">
                Type of Equipment:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required"
                    Font-Bold="True" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3">
                <span style="font-size: 0.4em">&nbsp; </span>
            </td>
        </tr>
        <tr>
            <td style="width: 158px">
                <strong><span style="color: #000000">Optional Information</span></strong></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 158px">
                Your Phone Number:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 158px">
                Your Fax Number:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox7" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 158px">
                Your Location:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox8" runat="server" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <span style="font-size: 0.4em">&nbsp;&nbsp; </span>
            </td>
        </tr>
        <tr>
            <td style="width: 158px" valign="top">
                Product(s) Description:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox9" runat="server" Height="83px" TextMode="MultiLine" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 158px; height: 36px" valign="top">
            </td>
            <td style="width: 100px; height: 36px">
                <asp:Button ID="Button1" runat="server" BackColor="WhiteSmoke" BorderColor="DimGray"
                    BorderStyle="Outset" BorderWidth="1px" Font-Names="Tahoma" Font-Size="8pt" OnClick="Button1_Click"
                    Text="submit" ValidationGroup="5" /></td>
            <td style="width: 100px; height: 36px">
            </td>
        </tr>
        <tr>
            <td style="width: 158px; height: 36px" valign="top">
            </td>
            <td colspan="2" style="height: 36px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text="We have received your information. </br>You will be contacted as soon as possible."
                    Visible="False"></asp:Label><br />
                <span style="font-size: 0.4em">&nbsp;
                    <br />
                </span>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>


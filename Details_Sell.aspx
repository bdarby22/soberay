<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details_Sell.aspx.cs" Inherits="Details" Title="Product Details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<asp:MultiView id="MultiView1" runat="server"><asp:View id="View1" runat="server"><asp:AccessDataSource id="adsSellerInfo" runat="server" SelectCommand="SELECT * FROM [SALES] WHERE ([id] = ?)" DataFile="~/App_Data/xSobesInventoryx.mdb">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="item" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource> <asp:DataList id="DataList1" runat="server" Width="585px" DataSourceID="adsSellerInfo" DataKeyField="id">
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Font-Bold="True" Text='<%# Eval("id") %>'></asp:Label><br />
                            <br />
                            <br />
                            <br />
                            <table cellpadding="3" style="border-right: #f0f0f0 1px solid; border-top: #f0f0f0 1px solid;
                                border-left: #f0f0f0 1px solid; width: 100%; border-bottom: #f0f0f0 1px solid">
                                <tr>
                                    <td style="width: 163px">
                                        Name:</td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Font-Names="Franklin Gothic Medium" Text='<%# Eval("name") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Email:
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="pics" Font-Names="Franklin Gothic Medium"
                                            NavigateUrl='<%# "mailto:" + Eval("email") %>' Text='<%# Eval("email") %>'></asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Company:
                                    </td>
                                    <td>
                                        <asp:Label ID="companyLabel" runat="server" Font-Names="Franklin Gothic Medium" Text='<%# Eval("company") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Manufacturer:</td>
                                    <td>
                                        <asp:Label ID="manufacturerLabel" runat="server" Font-Names="Franklin Gothic Medium"
                                            Text='<%# Eval("manufacturer") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Location of Equipment:
                                    </td>
                                    <td>
                                        <asp:Label ID="location_equipLabel" runat="server" Font-Names="Franklin Gothic Medium"
                                            Text='<%# Eval("location_equip") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Type:
                                    </td>
                                    <td>
                                        <asp:Label ID="typeLabel" runat="server" Font-Names="Franklin Gothic Medium" Text='<%# Eval("type") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Phone:
                                    </td>
                                    <td>
                                        <asp:Label ID="phoneLabel" runat="server" Font-Names="Franklin Gothic Medium" Text='<%# Eval("phone") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Fax:
                                    </td>
                                    <td>
                                        <asp:Label ID="faxLabel" runat="server" Font-Names="Franklin Gothic Medium" Text='<%# Eval("fax") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Location of Salesman:
                                    </td>
                                    <td>
                                        <asp:Label ID="location_personLabel" runat="server" Font-Names="Franklin Gothic Medium"
                                            Text='<%# Eval("location_person") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 163px">
                                        Description:
                                        <br />
                                    </td>
                                    <td valign="top">
                                        <asp:Label ID="descriptionLabel" runat="server" Font-Bold="False" Font-Names="Franklin Gothic Medium"
                                            Text='<%# Eval("description") %>'></asp:Label></td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList><BR /><asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="~/pAdmin_Home.aspx" CssClass="pics">Back to Admin</asp:HyperLink></asp:View> <asp:View id="View2" runat="server"><asp:Panel id="Panel1" runat="server" Width="575px" HorizontalAlign="Center" BorderWidth="1px" BorderStyle="Solid" BorderColor="#F0F0F0"><TABLE cellPadding=4><TBODY><TR><TD vAlign=middle>Username:&nbsp; <asp:TextBox id="txtUser" runat="server" ValidationGroup="4" Font-Size="10pt" TabIndex="1"></asp:TextBox> <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ValidationGroup="4" Font-Bold="True" ErrorMessage="*" ControlToValidate="txtUser"></asp:RequiredFieldValidator>&nbsp; Password:&nbsp; <asp:TextBox id="txtPass" runat="server" ValidationGroup="4" Font-Size="10pt" TextMode="Password" TabIndex="2"></asp:TextBox> <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ValidationGroup="4" Font-Bold="True" ErrorMessage="*" ControlToValidate="txtPass"></asp:RequiredFieldValidator>&nbsp; <asp:Button id="btnlogin" onclick="btnlogin_Click" runat="server" BorderWidth="1px" BorderStyle="Outset" BorderColor="DimGray" ValidationGroup="4" Font-Size="8pt" Text="login" Font-Names="Tahoma" BackColor="WhiteSmoke" TabIndex="3"></asp:Button> </TD></TR></TBODY></TABLE></asp:Panel> </asp:View> </asp:MultiView> 
</ContentTemplate>
    </asp:UpdatePanel>
    <br />
    &nbsp; &nbsp;<br />
    <br />
    <br />
    &nbsp;</asp:Content>


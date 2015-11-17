<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" Title="Product Details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="item_number" DataSourceID="AccessDataSource1"
        Width="576px">
        <ItemTemplate>
            Item number -
            <asp:Label ID="itemnum" runat="server" Font-Bold="True" Text='<%# Eval("item_number") %>'></asp:Label><br />
            <span style="font-size: 0.65em">&nbsp;<br />
            </span>
            <table cellspacing="3" style="width: 97%">
                <tr>
                    <td bgcolor="#f0f0f0" style="width: 128px; border-bottom: black 1px solid" valign="bottom">
                        Manufacturer</td>
                    <td bgcolor="#f0f0f0" style="width: 51px; border-bottom: black 1px solid" valign="bottom">
                        Qty.</td>
                    <td bgcolor="#f0f0f0" style="width: 155px; border-bottom: black 1px solid" valign="bottom">
                        Size</td>
                    <td bgcolor="#f0f0f0" style="width: 128px; border-bottom: black 1px solid" valign="bottom">
                        Style</td>
                    <td bgcolor="#f0f0f0" style="width: 128px; border-bottom: black 1px solid" valign="bottom">
                        Type</td>
                    <td style="width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 128px" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td style="width: 10px; height: 14px">
                                </td>
                                <td style="height: 14px" valign="top">
                                    <asp:Label ID="mfr" runat="server" Text='<%# Eval("manufacturer") %>'></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 51px" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="width: 10px; height: 14px">
                            </td>
                            <td style="height: 14px">
                        <asp:Label ID="qty" runat="server" Text='<%# Eval("quantity") %>'></asp:Label></td>
                        </tr>
                    </table>
                    </td>
                    <td style="width: 155px" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="width: 10px; height: 14px">
                            </td>
                            <td style="height: 14px" valign="top">
                        <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>'></asp:Label></td>
                        </tr>
                    </table>
                    </td>
                    <td style="width: 128px" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="width: 10px; height: 14px">
                            </td>
                            <td style="height: 14px" valign="top">
                        <asp:Label ID="styleLabel" runat="server" Text='<%# Eval("style") %>'></asp:Label></td>
                        </tr>
                    </table>
                    </td>
                    <td style="width: 128px" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="width: 10px; height: 14px">
                            </td>
                            <td style="height: 14px" valign="top">
                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>'></asp:Label></td>
                        </tr>
                    </table>
                    </td>
                    <td style="width: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 128px; height: 15px">
                    </td>
                    <td style="width: 51px; height: 15px">
                    </td>
                    <td style="width: 155px; height: 15px">
                    </td>
                    <td style="width: 128px; height: 15px">
                    </td>
                    <td style="width: 128px; height: 15px">
                    </td>
                    <td style="width: 3px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#f0f0f0" style="width: 128px; border-bottom: black 1px solid">
                        Details</td>
                    <td style="width: 51px">
                    </td>
                    <td style="width: 155px">
                    </td>
                    <td style="width: 128px">
                    </td>
                    <td style="width: 128px">
                    </td>
                    <td style="width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 10px">
                                </td>
                                <td style="width: 529px">
                                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>'></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 3px">
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                    <td style="width: 3px">
                    </td>
                </tr>
            </table>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 18px">
                                    <img src="images/emailicon.gif" width="18" height="18" /></td>
                                <td align="left" valign="top">
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="pics" Font-Size="14px" ForeColor="Blue"
                                        NavigateUrl='<%# "mailto:sales@soberaysons.com?subject=Item Number " +  Eval("item_number") %>'>More Information</asp:HyperLink></td>
                            </tr>
                        </table>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
<TABLE style="WIDTH: 100%" cellSpacing=0 cellPadding=0><TBODY><TR><TD style="WIDTH: 25px" vAlign=top align=center><asp:Image id="Image1" runat="server" ImageUrl="~/images/panelopen.gif" __designer:wfdid="w50"></asp:Image>&nbsp;</TD><TD vAlign=top><asp:Panel id="Panel1" runat="server" Width="57px" __designer:wfdid="w51" Height="16px" Font-Underline="False"><SPAN style="COLOR: blue"><asp:LinkButton id="LinkButton1" runat="server" CssClass="pics" Font-Size="14px" __designer:wfdid="w52">Pictures</asp:LinkButton></SPAN></asp:Panel> <cc1:CollapsiblePanelExtender id="CollapsiblePanelExtender1" runat="server" __designer:wfdid="w60" TargetControlID="Panel2" SuppressPostBack="True" Collapsed="True" CollapsedImage="images/panelopen.gif" CollapseControlID="Panel1" CollapsedText="Pictures" ExpandControlID="Panel1" ExpandedImage="images/panelclose.gif" ExpandedText="Pictures" ImageControlID="Image1" TextLabelID="LinkButton1"></cc1:CollapsiblePanelExtender> </TD></TR></TBODY></TABLE><asp:Panel style="OVERFLOW: hidden" id="Panel2" runat="server" Width="544px" __designer:wfdid="w53" height="0px"><TABLE style="WIDTH: 100%"><TBODY><TR><TD style="WIDTH: 17px; HEIGHT: 29px"></TD><TD style="HEIGHT: 29px; TEXT-ALIGN: center" align=center>- - - - - - - - - - - - - - - - - - - - - - - - - -&nbsp;- - - - - - - - - - - - - - - - - - - - - - - - </TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 16px"></TD><TD style="HEIGHT: 16px; TEXT-ALIGN: center" align=center><asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("image_1") %>' Width="450px" __designer:wfdid="w54" Height="450px" AlternateText='<%# Eval("product_name") %>' BorderColor="Silver" BorderStyle="Solid" BorderWidth="5px"></asp:Image></TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 29px"></TD><TD style="HEIGHT: 29px; TEXT-ALIGN: center" align=center>- - - - - - - - - - - - - - - - - - - - - - - - - -&nbsp;- - - - - - - - - - - - - - - - - - - - - - - - </TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 16px"></TD><TD style="HEIGHT: 16px" align=center><asp:Image id="Image3" runat="server" ImageUrl='<%# Eval("image_2") %>' Width="450px" __designer:wfdid="w55" Height="450px" AlternateText='<%# Eval("product_name") %>' BorderColor="Silver" BorderStyle="Solid" BorderWidth="5px"></asp:Image></TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 29px"></TD><TD style="HEIGHT: 29px; TEXT-ALIGN: center" align=center>- - - - - - - - - - - - - - - - - - - - - - - - - -&nbsp;- - - - - - - - - - - - - - - - - - - - - - - - </TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 16px"></TD><TD style="HEIGHT: 16px" align=center><asp:Image id="Image4" runat="server" ImageUrl='<%# Eval("image_3") %>' Width="450px" __designer:wfdid="w56" Height="450px" AlternateText='<%# Eval("product_name") %>' BorderColor="Silver" BorderStyle="Solid" BorderWidth="5px" ImageAlign="Middle"></asp:Image></TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 29px"></TD><TD style="HEIGHT: 29px; TEXT-ALIGN: center" align=center>- - - - - - - - - - - - - - - - - - - - - - - - - -&nbsp;- - - - - - - - - - - - - - - - - - - - - - - - </TD></TR><TR><TD style="WIDTH: 17px"></TD><TD align=center><asp:Image id="Image5" runat="server" ImageUrl='<%# Eval("image_4") %>' Width="450px" __designer:wfdid="w57" Height="450px" AlternateText='<%# Eval("product_name") %>' BorderColor="Silver" BorderStyle="Solid" BorderWidth="5px"></asp:Image></TD></TR><TR><TD style="WIDTH: 17px; HEIGHT: 29px"></TD><TD style="HEIGHT: 29px; TEXT-ALIGN: center" align=center>- - - - - - - - - - - - - - - - - - - - - - - - - -&nbsp;- - - - - - - - - - - - - - - - - - - - - - - - </TD></TR></TBODY></TABLE></asp:Panel>&nbsp; 
</contenttemplate>
                        </asp:UpdatePanel>
        </ItemTemplate>
    </asp:DataList>&nbsp;
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb"
        SelectCommand="SELECT [item_number], [manufacturer], [quantity], [size], [style], [description], [type], [image_1], [image_2], [image_3], [image_4], [product_name] FROM [PRODUCT] WHERE ([item_number] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="item_number" QueryStringField="item" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    <Services>
        <asp:ServiceReference Path="WebService.asmx" />
    </Services>
    </asp:ScriptManager><asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
&nbsp;<asp:TextBox id="TextBox1" runat="server" Width="127px" AutoCompleteType="Disabled"></asp:TextBox> <asp:Button id="Button1" onclick="Button1_Click" runat="server" Text="Search" Font-Size="X-Small"></asp:Button> <cc1:AutoCompleteExtender id="ace" runat="server" CompletionInterval="250" TargetControlID="TextBox1" ServicePath="WebService.asmx" ServiceMethod="GetWords" MinimumPrefixLength="1" EnableCaching="False"></cc1:AutoCompleteExtender> 
</contenttemplate>
    </asp:UpdatePanel>&nbsp;&nbsp;<br />
    &nbsp;
</asp:Content>


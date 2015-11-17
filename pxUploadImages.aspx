<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pxUploadImages.aspx.cs" Inherits="pxUploadImages" Title="Upload Images" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View3" runat="server">
            Item
            <asp:Label ID="Label4" runat="server" Font-Bold="True"></asp:Label>
            is ready to have images uploaded.<br />
            <br />
            <br />
            <br />
            Image 1:
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />&nbsp; &nbsp;<asp:Button
                ID="btnup1" runat="server" Font-Size="X-Small" OnClick="btnup1_Click" Text="Upload" /><br />
            &nbsp;<br />
            Image 2:
            <asp:FileUpload ID="FileUpload2" runat="server" Width="300px" />
            &nbsp;
            <asp:Button ID="btnup2" runat="server" Font-Size="X-Small" Text="Upload" OnClick="btnup2_Click" /><br />
            &nbsp;<br />
            Image 3:
            <asp:FileUpload ID="FileUpload3" runat="server" Width="300px" />
            &nbsp;
            <asp:Button ID="btnup3" runat="server" Font-Size="X-Small" Text="Upload" OnClick="btnup3_Click" /><br />
            &nbsp;<br />
            Image 4:
            <asp:FileUpload ID="FileUpload4" runat="server" Width="300px" />
            &nbsp;
            <asp:Button ID="btnup4" runat="server" Font-Size="X-Small" Text="Upload" OnClick="btnup4_Click" /><br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px">
                <asp:LinkButton ID="lbBacck" runat="server" CssClass="pics" OnClick="lbBacck_Click" >Insert Another Item</asp:LinkButton></asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px">
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="pics" PostBackUrl="~/SoberaysOnly.aspx">Admin Home</asp:LinkButton></asp:Panel>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
            <br />
            <asp:Label ID="lblsession" runat="server"></asp:Label></asp:View>
    </asp:MultiView>
</asp:Content>


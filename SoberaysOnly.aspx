<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SoberaysOnly.aspx.cs" Inherits="SoberaysOnly" Title="Admin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel id="UpdatePanel2" runat="server">
        <contenttemplate>
<TABLE style="WIDTH: 575px"><TBODY><TR><TD vAlign=top width=55><TABLE style="WIDTH: 100%"><TBODY><TR><TD style="WIDTH: 55px; BORDER-BOTTOM: darkgray 1px dashed" vAlign=top align=center><asp:Label id="lblType" runat="server" ForeColor="Red" Font-Size="14px" Font-Bold="True">ADMIN</asp:Label></TD></TR></TBODY></TABLE><SPAN>&nbsp;</SPAN></TD><TD style="COLOR: #000000" vAlign=middle><TABLE style="WIDTH: 100%"><TBODY><TR><TD style="WIDTH: 315px" vAlign=top>&nbsp;-&nbsp; <asp:LinkButton id="lbEdit" onclick="lbEdit_Click" runat="server" CssClass="pics">Edit Items</asp:LinkButton>&nbsp; |&nbsp; <asp:LinkButton id="lbNew" onclick="lbNew_Click" runat="server" CssClass="pics">New Item</asp:LinkButton>&nbsp; |&nbsp; <asp:LinkButton id="LinkButton3" runat="server" CssClass="pics" OnClick="LinkButton3_Click">Upload Images</asp:LinkButton></TD><TD><asp:UpdateProgress id="UpdateProgress1" runat="server" DisplayAfter="200" AssociatedUpdatePanelID="UpdatePanel2"><ProgressTemplate>
<SPAN style="COLOR: red"><STRONG>Switching Views....</STRONG></SPAN>
</ProgressTemplate>
</asp:UpdateProgress></TD></TR></TBODY></TABLE>&nbsp; &nbsp;&nbsp; </TD></TR></TBODY></TABLE>
</contenttemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
<SPAN style="FONT-SIZE: 0.4em"></SPAN><TABLE style="WIDTH: 584px; HEIGHT: 24px"><TBODY><TR><TD style="HEIGHT: 56px" colSpan=3><asp:MultiView id="MultiView1" runat="server"><asp:View id="View1" runat="server"><SPAN style="FONT-SIZE: 10pt"><STRONG>Edit Items: </STRONG></SPAN><cc1:TabContainer id="TabContainer1" runat="server" ActiveTabIndex="3"><cc1:TabPanel runat="server" ID="TabPanel2" HeaderText="Rubber Products"><ContentTemplate>
<asp:GridView id="GridView1" runat="server" Width="433px" DataKeyNames="item_number" AllowPaging="True" AutoGenerateColumns="False" PageSize="50" AllowSorting="True" DataSourceID="AccessDataSource1" Font-Bold="False">

<Columns>
    <asp:TemplateField ShowHeader="False">
        <EditItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel"></asp:LinkButton>
        </EditItemTemplate>
        <ControlStyle CssClass="pics" />
        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton23" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit"></asp:LinkButton>
        </ItemTemplate>
    </asp:TemplateField>
<asp:TemplateField ShowHeader="False">
<ControlStyle CssClass="pics"></ControlStyle>

<ItemStyle CssClass="pics" HorizontalAlign="Center" Font-Bold="True"></ItemStyle>
<ItemTemplate>
<asp:LinkButton id="LinkButton12" runat="server" CssClass="pics" Text="Delete" CausesValidation="False" CommandName="Delete" OnClick="LinkButton1_Click1" Font-Bold="False"></asp:LinkButton>
    <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="LinkButton12" ConfirmText="Are you sure you want to delete this item?">
    </cc1:ConfirmButtonExtender>
</ItemTemplate>

</asp:TemplateField>
    <asp:TemplateField HeaderText="#" SortExpression="item_number">
        <EditItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("item_number") %>'></asp:Label>
        </EditItemTemplate>

        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Bind("item_number") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="New?" SortExpression="IS_new">
        <EditItemTemplate>
            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IS_new") %>' />
        </EditItemTemplate>

        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IS_new") %>' Enabled="false" />
        </ItemTemplate>
    </asp:TemplateField>
<asp:TemplateField SortExpression="quantity" HeaderText="Qty."><EditItemTemplate>
<asp:TextBox id="TextBox1" runat="server" Width="64px" Text='<%# Bind("quantity") %>'></asp:TextBox>
</EditItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
<ItemTemplate>
<asp:Label id="Label2" runat="server" Text='<%# Bind("quantity") %>'></asp:Label> 
</ItemTemplate>

</asp:TemplateField>
<asp:TemplateField SortExpression="type" HeaderText="Type"><EditItemTemplate>
<asp:TextBox id="TextBox2" runat="server" Width="118px" Text='<%# Bind("type") %>'></asp:TextBox> 
</EditItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
<ItemTemplate>
<asp:Label id="Label1" runat="server" Text='<%# Bind("type") %>'></asp:Label>
</ItemTemplate>

</asp:TemplateField>
</Columns>

<RowStyle Height="23px" CssClass="row"></RowStyle>
    <EditRowStyle CssClass="row" />
    <PagerSettings Position="TopAndBottom" />
</asp:GridView> <asp:AccessDataSource id="AccessDataSource1" runat="server" UpdateCommand="UPDATE [PRODUCT] SET [IS_new] = ?, [quantity] = ?, [type] = ? WHERE [item_number] = ?" InsertCommand="INSERT INTO [PRODUCT] ([item_number], [IS_new], [quantity], [type]) VALUES (?, ?, ?, ?)" DataFile="~/App_Data/xSobesInventoryx.mdb" DeleteCommand="DELETE FROM [PRODUCT] WHERE [item_number] = ?" SelectCommand="SELECT [item_number], [IS_new], [quantity], [type] FROM [PRODUCT] ORDER BY [item_number]"><InsertParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
<asp:Parameter Type="Boolean" Name="IS_new"></asp:Parameter>
<asp:Parameter Type="String" Name="quantity"></asp:Parameter>
<asp:Parameter Type="String" Name="type"></asp:Parameter>
</InsertParameters>
<DeleteParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Type="Boolean" Name="IS_new"></asp:Parameter>
<asp:Parameter Type="String" Name="quantity"></asp:Parameter>
<asp:Parameter Type="String" Name="type"></asp:Parameter>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</UpdateParameters>
</asp:AccessDataSource> 
</ContentTemplate>
</cc1:TabPanel>
<cc1:TabPanel runat="server" ID="TabPanel3" HeaderText="Tire Machinery"><ContentTemplate>
<asp:GridView id="GridView2" runat="server" Width="433px" DataKeyNames="item_number" AllowPaging="True" AutoGenerateColumns="False" PageSize="50" AllowSorting="True" DataSourceID="AccessDataSource2"><Columns>
<asp:CommandField DeleteText="" ShowEditButton="True">
<ItemStyle HorizontalAlign="Center" Font-Bold="False" CssClass="row"></ItemStyle>

<ControlStyle CssClass="pics"></ControlStyle>
</asp:CommandField>
<asp:TemplateField ShowHeader="False">
<ControlStyle CssClass="pics"></ControlStyle>

<ItemStyle CssClass="pics" HorizontalAlign="Center" Font-Bold="True"></ItemStyle>
<ItemTemplate>
<asp:LinkButton id="LinkButton1" runat="server" CssClass="pics" Text="Delete" CausesValidation="False" CommandName="Delete" OnClick="LinkButton1_Click2" Font-Bold="False"></asp:LinkButton>
    <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="LinkButton1" ConfirmText="Are you sure you want to delete this item?">
    </cc1:ConfirmButtonExtender>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField ReadOnly="True" DataField="item_number" SortExpression="item_number" HeaderText="#">
<ItemStyle HorizontalAlign="Center" Font-Bold="True"></ItemStyle>
</asp:BoundField>
<asp:CheckBoxField DataField="IS_New" SortExpression="IS_New" HeaderText="New?">
<ItemStyle HorizontalAlign="Center"></ItemStyle>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
</asp:CheckBoxField>
<asp:TemplateField SortExpression="quantity" HeaderText="Qty."><EditItemTemplate>
<asp:TextBox id="TextBox1" runat="server" Width="72px" Text='<%# Bind("quantity") %>'></asp:TextBox> 
</EditItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
<ItemTemplate>
<asp:Label id="Label1" runat="server" Text='<%# Bind("quantity") %>'></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="type" HeaderText="Type"><EditItemTemplate>
<asp:TextBox id="TextBox3" runat="server" Width="159px" Text='<%# Bind("type") %>'></asp:TextBox> 
</EditItemTemplate>

<ControlStyle Width="200px"></ControlStyle>

<ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
<ItemTemplate>
<asp:Label runat="server" Text='<%# Bind("type") %>' id="Label2"></asp:Label>
</ItemTemplate>
</asp:TemplateField>
</Columns>

<RowStyle Height="23px" CssClass="row"></RowStyle>
    <PagerSettings Position="TopAndBottom" />


</asp:GridView> <asp:AccessDataSource id="AccessDataSource2" runat="server" UpdateCommand="UPDATE [TIRE_MACHINERY] SET [IS_new] = ?, [quantity] = ?, [type] = ? WHERE [item_number] = ?" InsertCommand="INSERT INTO [TIRE_MACHINERY] ([item_number], [IS_new], [quantity], [type]) VALUES (?, ?, ?, ?)" DataFile="~/App_Data/xSobesInventoryx.mdb" DeleteCommand="DELETE FROM [TIRE_MACHINERY] WHERE [item_number] = ?" SelectCommand="SELECT [item_number], [IS_new], [quantity], [type] FROM [TIRE_MACHINERY] ORDER BY [item_number]"><InsertParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
<asp:Parameter Type="Boolean" Name="IS_new"></asp:Parameter>
<asp:Parameter Type="String" Name="quantity"></asp:Parameter>
<asp:Parameter Type="String" Name="type"></asp:Parameter>
</InsertParameters>
<DeleteParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Type="Boolean" Name="IS_new"></asp:Parameter>
<asp:Parameter Type="String" Name="quantity"></asp:Parameter>
<asp:Parameter Type="String" Name="type"></asp:Parameter>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</UpdateParameters>
</asp:AccessDataSource> 
</ContentTemplate>
</cc1:TabPanel>
<cc1:TabPanel runat="server" ID="TabPanel8" HeaderText="Edit Rubber Images"><ContentTemplate>
<asp:GridView id="GridView3" runat="server" Width="433px" DataKeyNames="item_number" AllowPaging="True" AutoGenerateColumns="False" PageSize="50" AllowSorting="True" DataSourceID="AccessDataSource5" __designer:wfdid="w1">
<PagerSettings Position="TopAndBottom"></PagerSettings>
<Columns>
<asp:CommandField ShowEditButton="True"></asp:CommandField>
<asp:TemplateField SortExpression="item_number" HeaderText="#"><EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("item_number") %>'></asp:Label>
                        
</EditItemTemplate>
<ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Bind("item_number") %>'></asp:Label>
                        
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="image_1" HeaderText="image_1"><EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image_1") %>' Width="272px"></asp:TextBox><br />
                            &nbsp;<br />
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("image_2") %>' Width="272px"></asp:TextBox><br />
                            &nbsp;<br />
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("image_3") %>' Width="272px"></asp:TextBox><br />
                            &nbsp;<br />
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("image_4") %>' Width="272px"></asp:TextBox>
                        
</EditItemTemplate>
<ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("image_1") %>'></asp:Label><br />
                            <span style="font-size: 0.4em">&nbsp;</span><br />
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("image_2") %>'></asp:Label><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("image_3") %>'></asp:Label><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("image_4") %>'></asp:Label>
                        
</ItemTemplate>
</asp:TemplateField>
</Columns>

<RowStyle Height="23px" CssClass="row"></RowStyle>
</asp:GridView> <asp:AccessDataSource id="AccessDataSource5" runat="server" UpdateCommand="UPDATE [PRODUCT] SET [image_1] = ?, [image_2] = ?, [image_4] = ?, [image_3] = ? WHERE [item_number] = ?" InsertCommand="INSERT INTO [PRODUCT] ([item_number], [image_1], [image_2], [image_4], [image_3]) VALUES (?, ?, ?, ?, ?)" DataFile="~/App_Data/xSobesInventoryx.mdb" DeleteCommand="DELETE FROM [PRODUCT] WHERE [item_number] = ?" SelectCommand="SELECT [item_number], [image_1], [image_2], [image_4], [image_3] FROM [PRODUCT] ORDER BY [item_number]" __designer:wfdid="w2"><DeleteParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Type="String" Name="image_1"></asp:Parameter>
<asp:Parameter Type="String" Name="image_2"></asp:Parameter>
<asp:Parameter Type="String" Name="image_4"></asp:Parameter>
<asp:Parameter Type="String" Name="image_3"></asp:Parameter>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</UpdateParameters>
<InsertParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
<asp:Parameter Type="String" Name="image_1"></asp:Parameter>
<asp:Parameter Type="String" Name="image_2"></asp:Parameter>
<asp:Parameter Type="String" Name="image_4"></asp:Parameter>
<asp:Parameter Type="String" Name="image_3"></asp:Parameter>
</InsertParameters>
</asp:AccessDataSource> 
</ContentTemplate>
</cc1:TabPanel>
<cc1:TabPanel runat="server" ID="TabPanel1" HeaderText="Edit Tire Images"><ContentTemplate>
<asp:GridView id="GridView4" runat="server" Width="289px" DataKeyNames="item_number" AllowPaging="True" AutoGenerateColumns="False" PageSize="50" AllowSorting="True" DataSourceID="AccessDataSource6" __designer:wfdid="w5">
<PagerSettings Position="TopAndBottom"></PagerSettings>
<Columns>
<asp:TemplateField ShowHeader="False"><EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                Text="Update"></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                Text="Cancel"></asp:LinkButton>
                        
</EditItemTemplate>
<ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                Text="Edit"></asp:LinkButton>
                        
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField ReadOnly="True" DataField="item_number" SortExpression="item_number" HeaderText="#">
<ItemStyle Font-Bold="True"></ItemStyle>
</asp:BoundField>
<asp:TemplateField SortExpression="image_1" HeaderText="images"><EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image_1") %>' Width="272px"></asp:TextBox><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image_2") %>' Width="272px"></asp:TextBox><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("image_3") %>' Width="272px"></asp:TextBox><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("image_4") %>' Width="272px"></asp:TextBox>
                        
</EditItemTemplate>
<ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("image_1") %>' Font-Size="9pt"></asp:Label><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("image_2") %>' Font-Size="9pt"></asp:Label><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("image_3") %>' Font-Size="9pt"></asp:Label><br />
                            <span style="font-size: 0.4em">&nbsp;<br />
                            </span>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("image_4") %>' Font-Size="9pt"></asp:Label>
                        
</ItemTemplate>
</asp:TemplateField>
</Columns>

<RowStyle Height="23px" CssClass="row"></RowStyle>
</asp:GridView> <asp:AccessDataSource id="AccessDataSource6" runat="server" UpdateCommand="UPDATE [TIRE_MACHINERY] SET [image_1] = ?, [image_2] = ?, [image_3] = ?, [image_4] = ? WHERE [item_number] = ?" InsertCommand="INSERT INTO [TIRE_MACHINERY] ([item_number], [image_1], [image_2], [image_3], [image_4]) VALUES (?, ?, ?, ?, ?)" DataFile="~/App_Data/xSobesInventoryx.mdb" DeleteCommand="DELETE FROM [TIRE_MACHINERY] WHERE [item_number] = ?" SelectCommand="SELECT [item_number], [image_1], [image_2], [image_3], [image_4] FROM [TIRE_MACHINERY] ORDER BY [item_number]" __designer:wfdid="w6"><DeleteParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</DeleteParameters>
<UpdateParameters>
<asp:Parameter Type="String" Name="image_1"></asp:Parameter>
<asp:Parameter Type="String" Name="image_2"></asp:Parameter>
<asp:Parameter Type="String" Name="image_3"></asp:Parameter>
<asp:Parameter Type="String" Name="image_4"></asp:Parameter>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
</UpdateParameters>
<InsertParameters>
<asp:Parameter Type="Int32" Name="item_number"></asp:Parameter>
<asp:Parameter Type="String" Name="image_1"></asp:Parameter>
<asp:Parameter Type="String" Name="image_2"></asp:Parameter>
<asp:Parameter Type="String" Name="image_3"></asp:Parameter>
<asp:Parameter Type="String" Name="image_4"></asp:Parameter>
</InsertParameters>
</asp:AccessDataSource> 
</ContentTemplate>
</cc1:TabPanel>
</cc1:TabContainer></asp:View><asp:View id="View2" runat="server"><asp:AccessDataSource id="AccessDataSource3" runat="server" UpdateCommand="UPDATE [PRODUCT] SET [IS_new] = ?, [manufacturer] = ?, [type] = ?, [size] = ?, [quantity] = ?, [description] = ?, [IS_ACCESS] = ?, [IS_silicone] = ?, [style] = ?, [IS_Lab] = ? WHERE [item_number] = ?" InsertCommand="INSERT INTO [PRODUCT] ([item_number], [IS_new], [manufacturer], [type], [size], [quantity], [description], [IS_ACCESS], [IS_silicone], [style], [IS_Lab]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" DataFile="~/App_Data/xSobesInventoryx.mdb" DeleteCommand="DELETE FROM [PRODUCT] WHERE [item_number] = ?" SelectCommand="SELECT [item_number], [IS_new], [manufacturer], [type], [size], [quantity], [description], [IS_ACCESS], [IS_silicone], [style], [IS_Lab] FROM [PRODUCT]"><InsertParameters>
    <asp:Parameter Name="item_number" Type="Int32" />
    <asp:Parameter Name="IS_new" Type="Boolean" />
    <asp:Parameter Name="manufacturer" Type="String" />
    <asp:Parameter Name="type" Type="String" />
    <asp:Parameter Name="size" Type="String" />
    <asp:Parameter Name="quantity" Type="String" />
    <asp:Parameter Name="description" Type="String" />
    <asp:Parameter Name="IS_ACCESS" Type="Boolean" />
    <asp:Parameter Name="IS_silicone" Type="Boolean" />
    <asp:Parameter Name="style" Type="String" />
    <asp:Parameter Name="IS_Lab" Type="Boolean" />
</InsertParameters>
<DeleteParameters>
    <asp:Parameter Name="item_number" Type="Int32" />
</DeleteParameters>
<UpdateParameters>
    <asp:Parameter Name="IS_new" Type="Boolean" />
    <asp:Parameter Name="manufacturer" Type="String" />
    <asp:Parameter Name="type" Type="String" />
    <asp:Parameter Name="size" Type="String" />
    <asp:Parameter Name="quantity" Type="String" />
    <asp:Parameter Name="description" Type="String" />
    <asp:Parameter Name="IS_ACCESS" Type="Boolean" />
    <asp:Parameter Name="IS_silicone" Type="Boolean" />
    <asp:Parameter Name="style" Type="String" />
    <asp:Parameter Name="IS_Lab" Type="Boolean" />
    <asp:Parameter Name="item_number" Type="Int32" />
</UpdateParameters>
</asp:AccessDataSource> <asp:Panel id="Panel1" runat="server" Width="510px" BorderWidth="1px" BorderColor="#F0F0F0"><asp:FormView id="FormView1" runat="server" Width="507px" DataKeyNames="item_number" DataSourceID="AccessDataSource3" OnItemInserted="FormView1_ItemInserted" OnItemInserting="FormView1_ItemInserting"><EditItemTemplate>
item_number: <asp:Label Text='<%# Eval("item_number") %>' runat="server" id="item_numberLabel1" /><br />
IS_new: <asp:CheckBox Checked='<%# Bind("IS_new") %>' runat="server" id="IS_newCheckBox" /><br />
manufacturer: <asp:TextBox Text='<%# Bind("manufacturer") %>' runat="server" id="manufacturerTextBox" /><br />
quantity: <asp:TextBox Text='<%# Bind("quantity") %>' runat="server" id="quantityTextBox" /><br />
size: <asp:TextBox Text='<%# Bind("size") %>' runat="server" id="sizeTextBox" /><br />
style: <asp:TextBox Text='<%# Bind("style") %>' runat="server" id="styleTextBox" /><br />
type: <asp:TextBox Text='<%# Bind("type") %>' runat="server" id="typeTextBox" /><br />
description: <asp:TextBox Text='<%# Bind("description") %>' runat="server" id="descriptionTextBox" /><br />
IS_ACCESS: <asp:CheckBox Checked='<%# Bind("IS_ACCESS") %>' runat="server" id="IS_ACCESSCheckBox" /><br />
IS_silicone: <asp:CheckBox Checked='<%# Bind("IS_silicone") %>' runat="server" id="IS_siliconeCheckBox" /><br />
IS_Lab: <asp:CheckBox Checked='<%# Bind("IS_Lab") %>' runat="server" id="IS_LabCheckBox" /><br />
image_1: <asp:TextBox Text='<%# Bind("image_1") %>' runat="server" id="image_1TextBox" /><br />
image_2: <asp:TextBox Text='<%# Bind("image_2") %>' runat="server" id="image_2TextBox" /><br />
image_3: <asp:TextBox Text='<%# Bind("image_3") %>' runat="server" id="image_3TextBox" /><br />
image_4: <asp:TextBox Text='<%# Bind("image_4") %>' runat="server" id="image_4TextBox" /><br />
product_name: <asp:TextBox Text='<%# Bind("product_name") %>' runat="server" id="product_nameTextBox" /><br />
<asp:LinkButton runat="server" Text="Update" CommandName="Update" id="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" id="UpdateCancelButton" CausesValidation="False" />
</EditItemTemplate>
<InsertItemTemplate>
<TABLE><TBODY><TR><TD style="BORDER-BOTTOM: gray 1px dashed" colSpan=2><STRONG><SPAN style="FONT-SIZE: 10pt">Information</SPAN></STRONG></TD><TD style="WIDTH: 100px; HEIGHT: 17px"></TD></TR><TR><TD style="WIDTH: 120px">item number:</TD><TD style="WIDTH: 231px"><asp:TextBox id="item_numberTextBox" runat="server" Width="38px" Text='<%# Bind("item_number") %>'></asp:TextBox> <SPAN style="FONT-SIZE: 7pt">(must be unique)</SPAN></TD><TD style="WIDTH: 100px"><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Font-Size="X-Small" Font-Bold="True" ControlToValidate="item_numberTextBox" ErrorMessage="Required" ValidationGroup="5"></asp:RequiredFieldValidator></TD></TR><TR><TD style="WIDTH: 120px">Featured?</TD><TD style="WIDTH: 231px"><asp:CheckBox id="IS_newCheckBox" runat="server" Checked='<%# Bind("IS_new") %>'></asp:CheckBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">Accessory?</TD><TD style="WIDTH: 231px"><asp:CheckBox id="IS_ACCESSCheckBox" runat="server" Checked='<%# Bind("IS_ACCESS") %>'></asp:CheckBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">Silicone?</TD><TD style="WIDTH: 231px"><asp:CheckBox id="IS_siliconeCheckBox" runat="server" Checked='<%# Bind("IS_silicone") %>'></asp:CheckBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">Lab Equipment?</TD><TD style="WIDTH: 231px"><asp:CheckBox id="IS_LabCheckBox" runat="server" Checked='<%# Bind("IS_Lab") %>'></asp:CheckBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">manufacturer:</TD><TD style="WIDTH: 231px"><asp:TextBox id="manufacturerTextBox" runat="server" Width="226px" Text='<%# Bind("manufacturer") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">qty:</TD><TD style="WIDTH: 231px"><asp:TextBox id="quantityTextBox" runat="server" Width="22px" Text='<%# Bind("quantity") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">size:</TD><TD style="WIDTH: 231px"><asp:TextBox id="sizeTextBox" runat="server" Width="226px" Text='<%# Bind("size") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">style:</TD><TD style="WIDTH: 231px"><asp:TextBox id="styleTextBox" runat="server" Width="226px" Text='<%# Bind("style") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">type:</TD><TD style="WIDTH: 231px"><asp:TextBox id="typeTextBox" runat="server" Width="226px" Text='<%# Bind("type") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">description:</TD><TD style="WIDTH: 231px"><asp:TextBox id="descriptionTextBox" runat="server" Width="244px" Text='<%# Bind("description") %>' Height="70px" TextMode="MultiLine"></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="HEIGHT: 16px" colSpan=2></TD><TD style="WIDTH: 100px; HEIGHT: 16px"></TD></TR><TR><TD style="WIDTH: 120px; HEIGHT: 18px"></TD><TD style="WIDTH: 231px; HEIGHT: 18px"><asp:LinkButton id="InsertButton" onclick="InsertButton_Click" runat="server" CssClass="pics" Text="Insert" CommandName="Insert" CausesValidation="True"></asp:LinkButton> | <asp:LinkButton id="InsertCancelButton" onclick="InsertCancelButton_Click" runat="server" CssClass="pics" Text="Cancel" CommandName="Cancel" CausesValidation="False"></asp:LinkButton></TD><TD style="WIDTH: 100px; HEIGHT: 18px"></TD></TR></TBODY></TABLE>
</InsertItemTemplate>
<ItemTemplate>
<asp:LinkButton id="NewButton" onclick="NewButton_Click" runat="server" CssClass="pics" Text="Create new rubber product" CommandName="New" CausesValidation="False"></asp:LinkButton> 
</ItemTemplate>
</asp:FormView> </asp:Panel><BR /><asp:Panel id="Panel2" runat="server" Width="510px" BorderWidth="1px" BorderColor="#F0F0F0" BorderStyle="Solid"><asp:FormView id="FormView2" runat="server" Width="507px" DataKeyNames="item_number" DataSourceID="AccessDataSource4" OnItemInserted="FormView2_ItemInserted" OnItemInserting="FormView2_ItemInserting1"><EditItemTemplate>
item_number: <asp:Label Text='<%# Eval("item_number") %>' runat="server" id="item_numberLabel1" /><br />
IS_new: <asp:CheckBox Checked='<%# Bind("IS_new") %>' runat="server" id="IS_newCheckBox" /><br />
manufacturer: <asp:TextBox Text='<%# Bind("manufacturer") %>' runat="server" id="manufacturerTextBox" /><br />
quantity: <asp:TextBox Text='<%# Bind("quantity") %>' runat="server" id="quantityTextBox" /><br />
size: <asp:TextBox Text='<%# Bind("size") %>' runat="server" id="sizeTextBox" /><br />
style: <asp:TextBox Text='<%# Bind("style") %>' runat="server" id="styleTextBox" /><br />
type: <asp:TextBox Text='<%# Bind("type") %>' runat="server" id="typeTextBox" /><br />
description: <asp:TextBox Text='<%# Bind("description") %>' runat="server" id="descriptionTextBox" /><br />
IS_ACCESS: <asp:CheckBox Checked='<%# Bind("IS_ACCESS") %>' runat="server" id="IS_ACCESSCheckBox" /><br />
IS_silicone: <asp:CheckBox Checked='<%# Bind("IS_silicone") %>' runat="server" id="IS_siliconeCheckBox" /><br />
IS_Lab: <asp:CheckBox Checked='<%# Bind("IS_Lab") %>' runat="server" id="IS_LabCheckBox" /><br />
image_1: <asp:TextBox Text='<%# Bind("image_1") %>' runat="server" id="image_1TextBox" /><br />
image_2: <asp:TextBox Text='<%# Bind("image_2") %>' runat="server" id="image_2TextBox" /><br />
image_3: <asp:TextBox Text='<%# Bind("image_3") %>' runat="server" id="image_3TextBox" /><br />
image_4: <asp:TextBox Text='<%# Bind("image_4") %>' runat="server" id="image_4TextBox" /><br />
product_name: <asp:TextBox Text='<%# Bind("product_name") %>' runat="server" id="product_nameTextBox" /><br />
<asp:LinkButton runat="server" Text="Update" CommandName="Update" id="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" id="UpdateCancelButton" CausesValidation="False" />
</EditItemTemplate>
<InsertItemTemplate>
<TABLE><TBODY><TR><TD style="BORDER-BOTTOM: gray 1px dashed" colSpan=2><STRONG><SPAN style="FONT-SIZE: 10pt">Information</SPAN></STRONG></TD><TD style="WIDTH: 100px; HEIGHT: 17px"></TD></TR><TR><TD style="WIDTH: 120px; HEIGHT: 26px">item number:</TD><TD style="WIDTH: 231px; HEIGHT: 26px"><asp:TextBox id="item_numberTextBox" runat="server" Width="38px" Text='<%# Bind("item_number") %>'></asp:TextBox>
    <span style="font-size: 7pt">(must be unique)</span></TD><TD style="WIDTH: 100px; HEIGHT: 26px"><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Font-Size="X-Small" Font-Bold="True" ValidationGroup="5" ErrorMessage="Required" ControlToValidate="item_numberTextBox"></asp:RequiredFieldValidator></TD></TR><TR><TD style="WIDTH: 120px">Featured?</TD><TD style="WIDTH: 231px"><asp:CheckBox id="IS_newCheckBox" runat="server" Checked='<%# Bind("IS_new") %>'></asp:CheckBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">manufacturer:</TD><TD style="WIDTH: 231px"><asp:TextBox id="manufacturerTextBox" runat="server" Width="226px" Text='<%# Bind("manufacturer") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">qty:</TD><TD style="WIDTH: 231px"><asp:TextBox id="quantityTextBox" runat="server" Width="22px" Text='<%# Bind("quantity") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">size:</TD><TD style="WIDTH: 231px"><asp:TextBox id="sizeTextBox" runat="server" Width="226px" Text='<%# Bind("size") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">style:</TD><TD style="WIDTH: 231px"><asp:TextBox id="styleTextBox" runat="server" Width="226px" Text='<%# Bind("style") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">type:</TD><TD style="WIDTH: 231px"><asp:TextBox id="typeTextBox" runat="server" Width="226px" Text='<%# Bind("type") %>'></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 120px">description:</TD><TD style="WIDTH: 231px"><asp:TextBox id="descriptionTextBox" runat="server" Width="244px" Height="70px" Text='<%# Bind("description") %>' TextMode="MultiLine"></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="HEIGHT: 16px" colSpan=2></TD><TD style="WIDTH: 100px; HEIGHT: 16px"></TD></TR><TR><TD style="WIDTH: 120px"></TD><TD style="WIDTH: 231px"><asp:LinkButton id="InsertButton" runat="server" CssClass="pics" CommandName="Insert" CausesValidation="True" Text="Insert"></asp:LinkButton> | <asp:LinkButton id="InsertCancelButton" onclick="InsertCancelButton_Click1" runat="server" CssClass="pics" CommandName="Cancel" CausesValidation="False" Text="Cancel"></asp:LinkButton></TD><TD style="WIDTH: 100px"></TD></TR></TBODY></TABLE>
</InsertItemTemplate>
<ItemTemplate>
<asp:LinkButton id="NewButton" onclick="NewButton_Click" runat="server" CssClass="pics" CommandName="New" CausesValidation="False" Text="Create new tire machinery"></asp:LinkButton> 
</ItemTemplate>
</asp:FormView></asp:Panel> <asp:AccessDataSource id="AccessDataSource4" runat="server" UpdateCommand="UPDATE [TIRE_MACHINERY] SET [quantity] = ?, [manufacturer] = ?, [description] = ?, [type] = ?, [style] = ?, [size] = ?, [IS_New] = ? WHERE [item_number] = ?" InsertCommand="INSERT INTO [TIRE_MACHINERY] ([item_number], [quantity], [manufacturer], [description], [type], [style], [size], [IS_New]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" DataFile="~/App_Data/xSobesInventoryx.mdb" DeleteCommand="DELETE FROM [TIRE_MACHINERY] WHERE [item_number] = ?" SelectCommand="SELECT [item_number], [quantity], [manufacturer], [description], [type], [style], [size], [IS_New] FROM [TIRE_MACHINERY]">
    <DeleteParameters>
        <asp:Parameter Name="item_number" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="quantity" Type="String" />
        <asp:Parameter Name="manufacturer" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="style" Type="String" />
        <asp:Parameter Name="size" Type="String" />
        <asp:Parameter Name="IS_New" Type="Boolean" />
        <asp:Parameter Name="item_number" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="item_number" Type="Int32" />
        <asp:Parameter Name="quantity" Type="String" />
        <asp:Parameter Name="manufacturer" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="style" Type="String" />
        <asp:Parameter Name="size" Type="String" />
        <asp:Parameter Name="IS_New" Type="Boolean" />
    </InsertParameters>
</asp:AccessDataSource></asp:View> <asp:View id="View3" runat="server"><asp:Panel id="Panel3" runat="server" Width="450px" BorderWidth="1px" BorderColor="#F0F0F0" BorderStyle="Solid"><TABLE style="WIDTH: 100%"><TBODY><TR><TD style="BORDER-BOTTOM: gray 1px dashed; HEIGHT: 18px" colSpan=2><SPAN style="FONT-SIZE: 10pt"><STRONG>Upload Images&nbsp;</STRONG><SPAN style="FONT-SIZE: 7pt">(without creating a new item)</SPAN></SPAN></TD></TR><TR><TD colSpan=2>Item Number:&nbsp; <asp:TextBox id="TextBox6" runat="server" Width="38px"></asp:TextBox>&nbsp;&nbsp;&nbsp; <asp:Button id="Button1" onclick="Button1_Click" runat="server" Font-Size="X-Small" Text=" Next "></asp:Button></TD></TR></TBODY></TABLE></asp:Panel><BR /><asp:Panel id="Panel4" runat="server" Width="450px" BorderWidth="1px" BorderColor="#F0F0F0" BorderStyle="Solid"><TABLE style="WIDTH: 100%"><TBODY><TR><TD style="BORDER-BOTTOM: gray 1px dashed; HEIGHT: 16px" colSpan=2><STRONG>Items with no images:</STRONG></TD></TR><TR><TD style="WIDTH: 203px" vAlign=top>&nbsp;<SPAN style="BACKGROUND-COLOR: #f0f0f0; TEXT-DECORATION: underline">Rubber Products<BR /></SPAN><SPAN style="FONT-SIZE: 4pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<BR /></SPAN><asp:DataList id="DataList1" runat="server" Width="172px" DataSourceID="AccessDataSource7" DataKeyField="item_number" RepeatColumns="1"><ItemTemplate>
&nbsp;&nbsp;&nbsp; <asp:HyperLink id="HyperLink1" runat="server" NavigateUrl='<%# "~/Details.aspx?item=" + Eval("item_number") %>' CssClass="pics" Text='<%# Eval("item_number") %>' Target="_blank"></asp:HyperLink><BR />&nbsp;<SPAN style="FONT-SIZE: 0.4em"></SPAN> 
</ItemTemplate>
</asp:DataList> <asp:AccessDataSource id="AccessDataSource7" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb" SelectCommand="select item_number from product where image_1 is null or image_1 = 'images/noimage.gif'"></asp:AccessDataSource></TD><TD style="FONT-FAMILY: Tahoma" vAlign=top>&nbsp;<SPAN style="BACKGROUND-COLOR: #f0f0f0; TEXT-DECORATION: underline">Tire Machinery</SPAN><BR /><SPAN style="FONT-SIZE: 0.4em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <BR /></SPAN><asp:DataList id="DataList2" runat="server" Width="172px" DataSourceID="AccessDataSource8" DataKeyField="item_number" RepeatColumns="1"><ItemTemplate>
&nbsp;&nbsp;&nbsp; <asp:HyperLink id="HyperLink2" runat="server" NavigateUrl='<%# "~/Details_Tire.aspx?item=" + Eval("item_number") %>' CssClass="pics" Text='<%# Eval("item_number") %>' Target="_blank"></asp:HyperLink><BR />&nbsp;<SPAN style="FONT-SIZE: 0.4em"></SPAN> 
</ItemTemplate>
</asp:DataList> <asp:AccessDataSource id="AccessDataSource8" runat="server" DataFile="~/App_Data/xSobesInventoryx.mdb" SelectCommand="select item_number from tire_machinery where image_1 is null or image_1 = 'images/noimage.gif'"></asp:AccessDataSource></TD></TR></TBODY></TABLE></asp:Panel><BR /></asp:View>&nbsp; </asp:MultiView>&nbsp; </TD></TR></TBODY></TABLE>
</contenttemplate>
    </asp:UpdatePanel>
</asp:Content>


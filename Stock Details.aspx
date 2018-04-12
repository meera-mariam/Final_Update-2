<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="Stock Details.aspx.cs" Inherits="My_Project.Stock_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" ScrollBars="both" Height="300" Width="100%" >
 <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" Caption="STOCK DETAILS" CaptionAlign="Top" overflow="scroll" Font-Bold="True" ForeColor="#0099CC" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="Solid" Width="905px" Height="197px" BackImageUrl="~/img/gridviwdesign.jpg">
     <Columns>
         <asp:TemplateField HeaderText="Product Name">
             <ItemTemplate>
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Product Code">
             <ItemTemplate>
                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pcode") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Size">
             <ItemTemplate>
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Company Name">
             <ItemTemplate>
                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("Compname") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Company Code">
             <ItemTemplate>
                 <asp:Label ID="Label5" runat="server" Text='<%# Eval("Compcode") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Quantity">
             <ItemTemplate>
                 <asp:Label ID="Label6" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="SGST">
             <ItemTemplate>
                 <asp:Label ID="Label7" runat="server" Text='<%# Eval("Sgst") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="CGST">
             <ItemTemplate>
                 <asp:Label ID="Label8" runat="server" Text='<%# Eval("Cgst") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Price">
             <ItemTemplate>
                 <asp:Label ID="Label9" runat="server" Text='<%# Eval("Unit_Price") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Tax Amount">
             <ItemTemplate>
                 <asp:Label ID="Label10" runat="server" Text='<%# Eval("Tax_Amnt") %>'></asp:Label>
             </ItemTemplate>
         </asp:TemplateField>
     </Columns>
     <RowStyle BackColor="#FFFFCC" />
 </asp:GridView>
</asp:Panel>


</asp:Content>
 

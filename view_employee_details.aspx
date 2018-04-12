<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="view_employee_details.aspx.cs" Inherits="Welgate_Organic_Fiesta.view_employee_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
 <p>
     </p>
    <p>

    </p>
    <p>

    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#003366" BorderStyle="Solid" Caption="REGISTERED EMPLOYEES" CaptionAlign="Top" Font-Bold="True" ForeColor="#0099FF" HorizontalAlign="Center"> 
            <AlternatingRowStyle BorderStyle="Solid" />
            <Columns>
                <asp:TemplateField HeaderText="EMPID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Emp_Reg_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ADDRESS">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              <%--  <asp:TemplateField HeaderText="CONTACT">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                    </ItemTemplate>--%>
               <%-- </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="EMAIL ID">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DOB">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("DOB") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GENDER">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DESIGNATION">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              <%--  <asp:TemplateField HeaderText="DATE OF JOINING">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("DateofJoining") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
            </Columns>
            <RowStyle BorderStyle="Solid" />
        </asp:GridView>
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


































</asp:Content>

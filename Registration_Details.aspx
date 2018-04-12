<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="Registration_Details.aspx.cs" Inherits="Welgate_Organic_Projects.Registration_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="Emp_Reg_Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">Emp_Reg_Id:
            <asp:Label ID="Emp_Reg_IdLabel" runat="server" Text='<%# Eval("Emp_Reg_Id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Contact:
            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            Email_Id:
            <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Designation:
            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">Emp_Reg_Id:
            <asp:Label ID="Emp_Reg_IdLabel1" runat="server" Text='<%# Eval("Emp_Reg_Id") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Contact:
            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Email_Id:
            <asp:TextBox ID="Email_IdTextBox" runat="server" Text='<%# Bind("Email_Id") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Designation:
            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />Contact:
            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
            <br />Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />Email_Id:
            <asp:TextBox ID="Email_IdTextBox" runat="server" Text='<%# Bind("Email_Id") %>' />
            <br />Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />Designation:
            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">Emp_Reg_Id:
            <asp:Label ID="Emp_Reg_IdLabel" runat="server" Text='<%# Eval("Emp_Reg_Id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Contact:
            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            Email_Id:
            <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Designation:
            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Emp_Reg_Id:
            <asp:Label ID="Emp_Reg_IdLabel" runat="server" Text='<%# Eval("Emp_Reg_Id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Contact:
            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            Email_Id:
            <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Designation:
            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:organicdbConnectionString %>" SelectCommand="SELECT [Emp_Reg_Id], [Name], [Address], [Contact], [Username], [Password], [Email Id] AS Email_Id, [Gender], [Designation] FROM [Registbl]"></asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

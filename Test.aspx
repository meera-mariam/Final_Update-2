<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Page.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Welgate_Organic_Fiesta.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                Basic Forms
              </header>
              <div class="panel-body">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Employee Name</label>
                      <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Employee Name" runat="server"></asp:TextBox>
                  </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Address</label>
                      <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>
</div>
                </section>
                </div>
        
        </div>
    
</asp:Content>

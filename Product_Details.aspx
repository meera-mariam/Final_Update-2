<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="Product_Details.aspx.cs" Inherits="My_Project.Product_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

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

    </p> <p>

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
     <p>

    </p>
     <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading" style="font-family: Arial; font-size: medium; font-style: italic; color: #660033">
               ---PRODUCT DETAILS---
              </header>
              <div class="panel-body">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Product Name</b></label>
                      <asp:TextBox ID="txtpname" CssClass="form-control" placeholder="Product Name" runat="server" Width="540px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!"  ForeColor="Red" ControlToValidate="txtpname"></asp:RequiredFieldValidator>
                  </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Product Code</b></label>
                      <asp:TextBox ID="txtpcode" CssClass="form-control" placeholder="Product Code" runat="server" Width="539px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!"  ForeColor="Red" ControlToValidate="txtpcode"></asp:RequiredFieldValidator>
                  </div>
                      </div>

                       <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Size</b></label>
                      <asp:TextBox ID="txtsize" CssClass="form-control" placeholder="Size" runat="server" Width="543px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txtsize" ></asp:RequiredFieldValidator>
                  </div>
                      </div>

                  
                       <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Company Name</b></label>
                      <asp:TextBox ID="txtcompname" CssClass="form-control" placeholder="Company Name" runat="server" Width="545px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txtcompname" ></asp:RequiredFieldValidator>
                  </div>
                      </div>


                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Company Code</b></label>
                      <asp:TextBox ID="txtcompcode" CssClass="form-control" placeholder="Company Code" runat="server" Width="544px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txtcompcode"></asp:RequiredFieldValidator>
                  </div>
                      </div>


                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Quantity</b></label>
                      <asp:TextBox ID="txtqty" CssClass="form-control" placeholder="Quantity" runat="server" Width="552px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txtqty"></asp:RequiredFieldValidator>
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Sgst</b></label>
                      <asp:TextBox ID="txtsgst" CssClass="form-control" placeholder="Sgst" runat="server" Width="543px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txtsgst"></asp:RequiredFieldValidator>
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Cgst</b></label>
                      <asp:TextBox ID="txtcgst" CssClass="form-control" placeholder="Cgst" runat="server" Width="553px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txtcgst" ></asp:RequiredFieldValidator>
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Unit Price</b></label>
                      <asp:TextBox ID="txtunit_price" CssClass="form-control" placeholder="Unit Price" runat="server" Width="551px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!"  ForeColor="Red" ControlToValidate="txtunit_price" ></asp:RequiredFieldValidator>
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b style="font-family: 'Times New Roman', Times, serif; color: #003366">Tax Amount</b></label>
                      <asp:TextBox ID="txttax" CssClass="form-control" placeholder="Tax Amount" runat="server" Width="552px" BorderColor="#33CCCC" ForeColor="#CC0066"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter The Field!" ForeColor="Red" ControlToValidate="txttax" ></asp:RequiredFieldValidator>
                  </div>
                      </div>

                  
                    <div class="col-lg-6">
                  <div class="form-group">
                  <%--  <label for="exampleInputPassword1"><b>Tax Amount</b></label>--%>
                     <asp:Button ID="btnadd" runat="server" Text="ADD" BackColor="#0066CC" Font-Bold="True" ForeColor="White" Height="33px" OnClick="btnadd_Click" Width="422px" />
                      
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                  </div>
                      </div>
</div>
                </section>
                </div>
        
        </div>
</asp:Content>

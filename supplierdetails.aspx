<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="supplierdetails.aspx.cs" Inherits="My_Project.supplierdetails" %>
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
              <header class="panel-heading">
               --- ADD SUPPLIER---
              </header>
              <div class="panel-body">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="Supplier Name"><b>Supplier Name</b></label>
                      <asp:TextBox ID="txtsuppliername" CssClass="form-control" placeholder="Supplier Name" runat="server" Width="655px"></asp:TextBox>
                  </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="Supplier Code"><b>Supplier Code</b></label>
                      <asp:TextBox ID="txtsuppliercode" CssClass="form-control" placeholder="Code" runat="server" Width="649px"></asp:TextBox>
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Address</b></label>
                      <asp:TextBox ID="txtaddress" CssClass="form-control" placeholder="Address" runat="server" Width="648px"></asp:TextBox>
                   
                  </div>
                    
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Email Id</b></label>
                      <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email Id" runat="server" Width="646px"></asp:TextBox>
                   
                  </div>
                    
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Contact</b></label>
                      <asp:TextBox ID="txtcontact" CssClass="form-control" placeholder=" Contact" runat="server" Width="643px"></asp:TextBox>
                   
                  </div>
                    
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Gsttin</b></label>
                      <asp:TextBox ID="txttin" CssClass="form-control" placeholder="Gsttin" runat="server" Width="650px"></asp:TextBox>
                   
                  </div>
                    
                      </div>


                    <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:Button ID="btnaddsupplier" CssClass="form-control" runat="server" OnClick="btnaddsupplier_Click" Text="SUBMIT" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Width="648px" />
                      <asp:Button ID="btnupdate" runat="server" CssClass="form-control" OnClick="btnupdate_Click" Text="UPDATE" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Width="648px" />

                         <asp:Button ID="btndelete" runat="server" CssClass="form-control" OnClick="btndelete_Click" Text="DELETE" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Width="650px" />


                    &nbsp;</div>
                  </div>

                  
                 <%--   <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                    &nbsp;</div>
                  </div>

                   <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                    &nbsp;</div>
                  </div>
</div>
                </section>
                </div>
        
        </div>--%>
</asp:Content>

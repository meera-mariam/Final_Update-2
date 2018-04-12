<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="search_product.aspx.cs" Inherits="Welgate_Organic_Fiesta.View_Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                  SERACH DETAILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </header>
              <div class="panel-body">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="itemname"><b>Item Name</b></label>
                      <asp:TextBox ID="txtitemname" CssClass="form-control" placeholder="Employee Name" runat="server"></asp:TextBox>
                  </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="itemcode"><b>Item Code</b></label>
                      <asp:TextBox ID="txtitemcode" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="cost"><b>Cost</b></label>
                      <asp:TextBox ID="txtcost" CssClass="form-control" placeholder="Supplier Name" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>
                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="suppliername"><b>Suplier Name</b></label>
                      <asp:TextBox ID="txtsuppliername" CssClass="form-control" placeholder="Supplier Code" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="suppliercode"><b>Suplier Code</b></label>
                      <asp:TextBox ID="txtsuppliercode" CssClass="form-control" placeholder="Cost" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="quantity"><b>Quantity</b></label>
                      <asp:TextBox ID="txtquantity" CssClass="form-control" placeholder="Quantity" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="expirydate"><b>Expiry Date</b></label>
                <asp:TextBox ID="txtexpirydate" CssClass="form-control" placeholder="Expiry Date" runat="server"></asp:TextBox>

                  </div>
                      </div>
                    <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnupdate" runat="server" Text="UPDATE DETAILS" OnClick="Button1_Click" BorderColor="#006699" ForeColor="#006699" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click1" Text="DELETE DETAILS" Width="141px" BorderColor="#0066CC" ForeColor="#0066CC" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="SERACH ITEM" Width="141px" BorderColor="#0033CC" ForeColor="#0066FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click1" Text="CLEAR ALL" Width="141px" BorderColor="#0033CC" ForeColor="#0066FF" />
                    </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" HorizontalAlign="Center" BorderWidth="1px" CellPadding="3" ForeColor="White">
                            <Columns>
                                <asp:TemplateField HeaderText="ITEM NAME">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Item Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ITEM CODE">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Item Code") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="COST">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Cost") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SUPPLIER NAME">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Supplier Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SUPPLIER CODE">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Supplier Code") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="QUANTITY">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="EXPIRY DATE">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Expiry Date") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </div>
</div>
                </section>
                </div>
        
        </div>




</asp:Content>


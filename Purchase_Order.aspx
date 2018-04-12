<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Page.Master" AutoEventWireup="true" CodeBehind="Purchase_Order.aspx.cs" Inherits="Welgate_Organic_Projects.Purchase_Order" %>
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
    <p>
    </p>
     <p>
    </p>
    <p>
    </p>

      <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading" style="font-family: 'Arial Black'; font-size: medium; font-style: italic; color: #808080">
                --Purchase Order Details--
              </header>
              <div class="panel-body" style="border: medium groove #800080">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Invoice No:</label>
                      <asp:Label ID="lblinvno" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                      <asp:DropDownList ID="itemlist1" CssClass="form-control" runat="server" AppendDataBoundItems="true" AutoPostBack="true" Width="563px" >
                       <asp:ListItem Value="0">--Search Your Items--</asp:ListItem>
                       </asp:DropDownList>

                      
                  </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Date</label>
                      <asp:TextBox ID="txtdate" CssClass="form-control" placeholder="txtdate" runat="server" TextMode="DateTime" Width="633px"></asp:TextBox>
                   
                  </div>
                      </div>

                  
                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Item Name</label>
                      <asp:TextBox ID="txtname" CssClass="form-control" runat="server" Width="633px"></asp:TextBox>
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Supplier</label>
                      <asp:TextBox ID="txtsupplier" CssClass="form-control" runat="server" ForeColor="#FFFFCC" Width="631px"></asp:TextBox>
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Item Code</label>
                      <asp:TextBox ID="txtcode" CssClass="form-control" runat="server" Width="632px"></asp:TextBox>
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Quantity</label>
                      <asp:TextBox ID="txtqty" CssClass="form-control" placeholder="txtdate" runat="server" Width="631px"></asp:TextBox>
                   
                  </div>
                      </div>

                  
                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Price</label>
                      <asp:TextBox ID="txtprice" CssClass="form-control" placeholder="txtdate" runat="server" Width="631px"></asp:TextBox>
                   
                  </div>
                      </div>

                    <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Payment Terms</label>
                      <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" Width="655px">
                          <asp:ListItem>--Select--</asp:ListItem>
                          <asp:ListItem>Cash Mode</asp:ListItem>
                          <asp:ListItem>Credit Mode</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                      </div>

  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1" style="font-family: 'Arial Black'; font-size: small; font-style: italic; color: #808080">PRODUCTS ORDERED</label>
                      <asp:GridView ID="GridView1" CssClass="form-control" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
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
                              <asp:TemplateField HeaderText="QUANTITY">
                                  <ItemTemplate>
                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="RATE">
                                  <ItemTemplate>
                                      <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:CommandField ShowDeleteButton="True">
                              <HeaderStyle Font-Bold="True" HorizontalAlign="Right" />
                              </asp:CommandField>
                          </Columns>
                      </asp:GridView>
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Net Amount</label>
                      <asp:TextBox ID="txtnettotal" CssClass="form-control" placeholder="Total" runat="server" Width="514px"></asp:TextBox>
                   
                  </div>
                      </div>

                  
                    <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btnsubmit" CssClass="form-control" runat="server" Text="SUBMIT" BackColor="#0099CC" BorderStyle="Double" Font-Bold="True" ForeColor="White" OnClick="btnsubmit_Click" Width="536px" />
                   
                  </div>
                      </div>

                     <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btnclear" CssClass="form-control" runat="server" Text="CLEAR ALL" BackColor="#0099CC" BorderStyle="Double" Font-Bold="True" ForeColor="White" OnClick="btndelete_Click" Width="537px" />
                   
                  </div>
                      </div>

                     <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btncalculate" CssClass="form-control" runat="server" Text="CALCULATE" BackColor="#0099CC" BorderStyle="Double" Font-Bold="True" ForeColor="White" OnClick="btncalculate_Click" Width="535px" />
                   
                  </div>
                      </div>

                     <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btnSearch" CssClass="form-control" runat="server" Text="SEARCH" BackColor="#0099CC" BorderStyle="Double" Font-Bold="True" ForeColor="White" OnClick="btnSearch_Click" Width="535px" />
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btnupdate" CssClass="form-control" runat="server" Text="UPDATE" BackColor="#0099CC" BorderStyle="Double" Font-Bold="True" ForeColor="White" OnClick="btnupdate_Click" Width="532px" />
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
      <asp:Button ID="btnsearch1" runat="server" CssClass="form-control" Text="ORDER" BackColor="#0099CC" Font-Bold="True" ForeColor="#FFFFCC" OnClick="btnsearch1_Click" BorderStyle="Double" Width="529px" />

                   
                  </div>
                      </div>

</div>
                </section>
                </div>
        
        </div>

    


</asp:Content>

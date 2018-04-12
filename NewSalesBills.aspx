<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewSalesBills.aspx.cs" Inherits="Welgate_Organic_Projects.NewSalesBills" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="Report2.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Welgate_Organic_Projects.DataSet1TableAdapters.Sale_Invoice_TblTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Sale_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Bill_No" Type="Int32" />
                <asp:Parameter Name="Price" Type="Double" />
                 <asp:Parameter Name="Tax_Total" Type="Double" />
                 <asp:Parameter Name="Sgst" Type="Double" />
                 <asp:Parameter Name="Cgst" Type="Double" />

            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Bill_No" Type="Int32" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Original_Item_No" Type="Int32" />
                 <asp:Parameter Name="Tax_Total" Type="Double" />
                 <asp:Parameter Name="Sgst" Type="Double" />
                 <asp:Parameter Name="Cgst" Type="Double" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
    
    
    </div>
    </form>
</body>
</html>

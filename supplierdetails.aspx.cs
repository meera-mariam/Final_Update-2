using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace My_Project
{
    public partial class supplierdetails : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            conn.Open();
        }

        protected void btnaddsupplier_Click(object sender, EventArgs e)
        {
            string ins = "insert into supplier_tbl(Sname,Scode,Address,[Email Id],Contact,Gsttin)values('" + txtsuppliername.Text.Trim() + "','" + txtsuppliercode.Text.Trim() + "','" + txtaddress.Text.Trim() + "','" + txtemail.Text.Trim() + "','" + txtcontact.Text.Trim() + "','" + txttin.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, conn);

            cmd.ExecuteNonQuery();
            txtsuppliername.Text = "";
            txtsuppliercode.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtcontact.Text = "";
            txttin.Text = "";

            Response.Write("<script LANGUAGE='Javascript'>alert('Details Added Successfully')</script");

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String update = "update supplier_tbl set Scode='" + txtsuppliercode.Text + "',Address='" + txtaddress.Text + "',Email='" + txtemail.Text + "',Contact='" + txtcontact.Text + "',Gsttin='" + txttin.Text + "'";
            SqlCommand cmd = new SqlCommand(update, conn);
            cmd.ExecuteNonQuery();


            Response.Write("<script LANGUAGE='JavaScript' >alert('Supplier Updated Successfully')</script>");
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            String delete = ("delete from supplier_tbl  where [Sname]=('" + txtsuppliername.Text + "' )");
            SqlCommand cmd = new SqlCommand(delete, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Supplier Deleted Successfully')</script>");

        }

    }
}
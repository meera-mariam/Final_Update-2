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
    public partial class Product_Details : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            conn.Open();
           

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string ins = "insert into product_details_tbl(Pname,Pcode,Size,Compname,Compcode,Quantity,Sgst,Cgst,Unit_Price,Tax_Amnt)values('" + txtpname.Text.Trim() + "','" + txtpcode.Text.Trim() + "','" + txtsize.Text.Trim() + "','" + txtcompname.Text.Trim() + "','" + txtcompcode.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtsgst.Text.Trim() + "','" + txtcgst.Text.Trim() + "','" + txtunit_price.Text.Trim() + "','" + txttax.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, conn);

            cmd.ExecuteNonQuery();
            txtpname.Text = "";
            txtpcode.Text = "";
            txtsize.Text = "";
            txtcompname.Text = "";
            txtcompcode.Text = "";
            txtqty.Text = "";
            txtsgst.Text = "";
            txtcgst.Text = "";
            txtunit_price.Text = "";
            txttax.Text = "";

            Response.Write("<script LANGUAGE='Javascript'>alert('Product Added Successfully')</script");
        }
    }
}
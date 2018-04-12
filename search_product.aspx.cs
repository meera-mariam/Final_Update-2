using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Welgate_Organic_Fiesta
{
    public partial class View_Stock : System.Web.UI.Page
    {
        String connectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
        SqlConnection conn;
        String query = "";
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            query = "select * from additemtbl";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();

            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }
         protected void Button1_Click(object sender, EventArgs e)
        {
             String update = "update additemtbl set [Item Name]='" + txtitemname.Text + "',[Item Code]='" + txtitemcode.Text + "',[Supplier Name]='" + txtsuppliername.Text + "',[Supplier Code]='" + txtsuppliercode.Text + "',[Quantity]='" + txtquantity.Text + "',[Expiry Date]='" + txtexpirydate.Text + "' where [Item Name]='" + txtitemname.Text + "'";
            cmd = new SqlCommand(update, conn);
            cmd.ExecuteNonQuery();


            Response.Write("<script LANGUAGE='JavaScript' >alert('Data Updated Successfully')</script>");


            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adr.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

        }

        protected void btndelete_Click1(object sender, EventArgs e)
        {
            String delete = ("delete from additemtbl  where [Item Name]=('" + txtitemname.Text + "' )");
            cmd = new SqlCommand(delete, conn);
            cmd.ExecuteNonQuery();


            Response.Write("<script LANGUAGE='JavaScript' >alert('Data Deleted Successfully')</script>");
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }


        }
    

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            String sel = ("Select [Item Code],Cost,[Supplier Name],[Supplier Code],Quantity,[Expiry Date]  from additemtbl  where [Item Name]=('" + txtitemname.Text + "')");
            cmd = new SqlCommand(sel, conn);



            //Response.Write("<script LANGUAGE='JavaScript' >alert('Data selected Successfully')</script>");
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                txtitemcode.Text = dt.Rows[0][0].ToString();
                txtcost.Text = dt.Rows[0][1].ToString();
                txtsuppliername.Text = dt.Rows[0][2].ToString();
                txtsuppliercode.Text = dt.Rows[0][3].ToString();
                txtquantity.Text = dt.Rows[0][4].ToString();
                txtexpirydate.Text = dt.Rows[0][5].ToString();


            }
        }

        protected void btnclear_Click1(object sender, EventArgs e)
        {
            txtitemname.Text = "";
            txtitemcode.Text = "";
            txtcost.Text = "";
            txtsuppliercode.Text = "";
            txtsuppliername.Text = "";
            txtquantity.Text = "";
            txtexpirydate.Text = "";
        }
        }

    }


       
    

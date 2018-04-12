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
    public partial class salesform : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        String ID = "";


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GenerateAutoID();
                 grid();
            }
            DateTime dNow = DateTime.Now;

            txtdate.Text = (dNow.ToString("yyyy-MM-dd"));

          
        }
    

        public void getcon()
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();
        }
         public void grid()
        {
            getcon();
            string str = "Select Sale_id, Pname,Size,Quantity,Tax_Total,Sgst,Cgst,Total from Sale_Bill_tbl";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

           

        }
        public void GenerateAutoID()
        {
            getcon();
            string str = "select count(Bill_No)from Sale_Bill_tbl";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());


            con.Close();
            i++;
            lblbillno.Text = ID + i.ToString();
        }
     
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }

     
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            getcon();
            String sel = "Select Size,Unit_Price,Sgst,Cgst,Tax_Amnt from product_details_tbl  where Pname='" + txtname.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();


            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                txtsize.Text = dt.Rows[0][0].ToString();
               
                txttotal.Text = dt.Rows[0][1].ToString();
                
               // txttot.Text = dt.Rows[0][3].ToString();
                txtcgst.Text = dt.Rows[0][2].ToString();
                txtsgst.Text = dt.Rows[0][3].ToString();
                txttax.Text = dt.Rows[0][4].ToString();
               
                   }
            
           
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {

            decimal a, b, c, d, g, i, h =0;
            a = Convert.ToDecimal(txtqty.Text);
            b = Convert.ToDecimal(txttotal.Text);            
            c = a * b;
            TextBox5.Text = c.ToString();
            d = Convert.ToDecimal(txtcgst.Text);
            //f = Convert.ToInt32(txtsgst.Text);
            g = d / 100;
            txtgross.Text = g.ToString();
            i = Convert.ToDecimal(txttax.Text);
            h = g + c + i;
            txtgross.Text = h.ToString();
            //t = Convert.ToDecimal(txtgross.Text);
            //t = t + h;
            //TextBox5.Text = t.ToString();
           
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            getcon();
            string ins = "insert into Sale_Bill_tbl(Bill_No,Pname,Size,Quantity,Total,Tax_Total,Sgst,Cgst)values('" + lblbillno.Text.Trim() + "','" + txtname.Text.Trim() + "','" + txtsize.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtgross.Text.Trim() + "','" + txttax.Text.Trim() + "','" + txtsgst.Text.Trim() + "','" + txtcgst.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
            String select = "select * from Sale_Bill_tbl";
            cmd = new SqlCommand(select, con);
            cmd.ExecuteNonQuery();


            //Response.Write("success");
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

            lblbillno.Text = "";
            txtname.Text = "";
            txtsize.Text = "";
            txtqty.Text = "";

            txtgross.Text = "";
            txttax.Text = "";

            txtsgst.Text = "";
            txtcgst.Text = "";

            //Response.Write("<script LANGUAGE='Javascript'>alert('Saved Successfully')</script");



        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String Sale_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label6")).Text;
            string del = "delete from Sale_Bill_tbl where Sale_id=" + Sale_id;
            SqlCommand cmd = new SqlCommand(del, con);
            Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
            cmd.ExecuteNonQuery();
            con.Close();
            grid();

        }

       
    }
}
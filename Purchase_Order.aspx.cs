using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Welgate_Organic_Projects
{
    public partial class Purchase_Order : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        String query = "";
        Int32 Quantity;
        String ID = "WEL#1411/18/777";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
                GenerateAutoID();
                grid();
                string com = "Select Pname from product_details_tbl";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                itemlist1.DataSource = dt;
                itemlist1.DataTextField = "Pname";

                itemlist1.DataBind();
                con.Close();
              
                }
                DateTime dNow = DateTime.Now;

                txtdate.Text = DateTime.Now.ToString();
            }
        

        public void getcon()
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();
        }
        

        public void grid()
        {
            getcon();
            string str = "Select [Item Name],[Item Code],Quantity,Price from Purchase_Order_tbl";
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
            con.Close();
        }

        public void GenerateAutoID()
        {
            getcon();
            string str = "select count(Purchase_Id)from Purchase_Order_tbl";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());


            con.Close();
            i++;
            lblinvno.Text = ID + i.ToString();
        }



        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
            LoadSum();
            getcon();
            string ins = "insert into Purchase_Order_tbl (Date,Supplier,Payment_Terms,[Item Name],[Item Code],[Quantity],Price)values('" + txtdate.Text.Trim() + "','" + txtsupplier.Text.Trim() + "','" + DropDownList2.SelectedItem.Text.Trim() + "','" + txtname.Text.Trim() + "','" + txtcode.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtprice.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtdate.Text = "";
            txtsupplier.Text = "";
            DropDownList2.SelectedItem.Text = "";
            txtname.Text = "";
            txtcode.Text = "";
            txtqty.Text = "";
            txtprice.Text = "";
            //txtnettotal.Text = "";

            String select = "select * from Purchase_Order_tbl";
            cmd = new SqlCommand(select, con);
            cmd.ExecuteNonQuery();
                
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            Response.Write("<script LANGUAGE='JavaScript' >alert('Order Sended ')</script>");
          

            con.Close();
         
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            getcon();
            String sel = "SELECT  Pname,Compname,Pcode,Quantity,Unit_Price FROM product_details_tbl  WHERE Quantity  BETWEEN 1 AND 3 ";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
             adr.Fill(dt);

if (dt.Rows.Count > 0)
            {


                txtname.Text = dt.Rows[0][0].ToString();
                txtsupplier.Text = dt.Rows[0][1].ToString();
                txtcode.Text = dt.Rows[0][2].ToString();
             
                txtqty.Text = dt.Rows[0][3].ToString();
               

              
               

             
               
                txtprice.Text = dt.Rows[0][4].ToString();



            }


con.Close();



        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            getcon();

            String update = "update product_details_tbl set Pcode='" + txtcode.Text + "',Compname='" + txtsupplier.Text + "',Quantity='" + txtqty.Text + "', Unit_Price='" + txtqty.Text + "' where Pname='" + txtname.Text + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();


            Response.Write("<script LANGUAGE='JavaScript' >alert('Data Updated Successfully')</script>");


            //SqlDataAdapter adr = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();

            //adr.Fill(dt);

            //if (dt1.Rows.Count > 0)
            //{


            //    txtname.Text = dt1.Rows[0][0].ToString();
            //    txtsupplier.Text = dt1.Rows[0][1].ToString();

            //    txtcode.Text = dt1.Rows[0][2].ToString();

            //    // txttot.Text = dt.Rows[0][3].ToString();
            //    txtqty.Text = dt1.Rows[0][3].ToString();
            //    txtprice.Text = dt1.Rows[0][4].ToString();
            //}

            con.Close();
        }

        protected void LoadSum()
        {
            getcon();
            String sel = "  select sum(Price)  FROM [organicdb].[dbo].[Purchase_Order_tbl] ";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();


            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                txtnettotal.Text = dt.Rows[0][0].ToString();
            }


            con.Close();
        }
        protected void btncalculate_Click(object sender, EventArgs e)
        {
            
            LoadSum();
            decimal a, b, c=0;
            a = Convert.ToDecimal(txtqty.Text);
            b = Convert.ToDecimal(txtprice.Text);
            c = a * b;
            txtprice.Text = c.ToString();
            txtnettotal.Text = c.ToString();
            //String sel = "  select sum(Total)  FROM [organicdb].[dbo].[Purchase_Order_tbl] ";
            //SqlCommand cmd = new SqlCommand(sel, con);
            //SqlDataAdapter adr = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //cmd.ExecuteNonQuery();


            //adr.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{


            //    txtnettotal.Text = dt.Rows[0][0].ToString();
            //}

           
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {


           
            

            GridView1.DataSource = null;
            GridView1.DataBind();
            GridView1.Columns.Clear();
            //GridView1.Visible = true;
            

            
            txtcode.Text = "";
           
            txtname.Text = "";
            txtnettotal.Text = "";
            txtprice.Text = "";
            txtqty.Text = "";
            txtsupplier.Text = "";

            con.Close();

        }

      

        protected void btnsearch1_Click(object sender, EventArgs e)
        {
            getcon();
            String sel = "Select Pname,Compname,Pcode,Quantity,Unit_Price from product_details_tbl  where Pname='" + itemlist1.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();
            adr.Fill(dt);

            if (dt.Rows.Count > 0)
            {


              
                txtname.Text = dt.Rows[0][0].ToString();

                txtsupplier.Text = dt.Rows[0][1].ToString();
                
               

                txtcode.Text = dt.Rows[0][2].ToString();

               
                txtqty.Text = dt.Rows[0][3].ToString();
                txtprice.Text = dt.Rows[0][4].ToString();
              
            }
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            string Price = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label4")).Text;
            string del = "delete from Purchase_Order_tbl where Price=" + Price;
            SqlCommand cmd = new SqlCommand(del, con);
            //Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
            GridView1.Visible = true;
            cmd.ExecuteNonQuery();
            con.Close();
            grid();
        }
    }
}

    

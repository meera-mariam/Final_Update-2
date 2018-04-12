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
    public partial class New_Sale_Bill : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        String ID = "WEL#1411/18/5479";
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

            GridView1.Visible = true;


            LoadSum();
            if (!IsPostBack)
            {
                GenerateAutoID();
                grid();

                string com = "Select Pname from product_details_tbl";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Pname";

                DropDownList1.DataBind();
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
            string str = "Select  Pname,Size,Quantity,Price,Tax_Total,Sgst,Cgst from Sale_Invoice_Tbl";
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
            string str = "select count(Bill_No)from Sale_Invoice_Tbl";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());


            con.Close();
            i++;
            lblbillno.Text = ID + i.ToString();
        }

        //protected void SAVE_Click(object sender, EventArgs e)
        //{
        //    LoadSum();
        //    getcon();
        //    string ins = "insert into Sale_Invoice_Tbl(Bill_No,Pname,Size,Quantity,Price,Tax_Total,Sgst,Cgst,[Grand Total],Date)values('" + lblbillno.Text.Trim() + "','" + DropDownList1.SelectedItem.Text.Trim() + "','" + txtsize.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtprice.Text.Trim() + "','" + txttax.Text.Trim() + "','" + txtsgst.Text.Trim() + "','" + txtcgst.Text.Trim() + "','" + txtnetamount.Text.Trim() + "','" + txtdate.Text.Trim() + "')";
        //    SqlCommand cmd = new SqlCommand(ins, con);
        //    cmd.ExecuteNonQuery();
        //    //Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
        //    String select = "select * from Sale_Invoice_Tbl";
        //    cmd = new SqlCommand(select, con);
        //    cmd.ExecuteNonQuery();


        //    //Response.Write("success");
        //    SqlDataAdapter adr = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    adr.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();

        //    }

        //    lblbillno.Text = "";
        //    DropDownList1.SelectedItem.Text = "";
        //    txtsize.Text = "";
        //    txtqty.Text = "";

        //    txtprice.Text = "";
        //    txttax.Text = "";

        //    txtsgst.Text = "";
        //    txtcgst.Text = "";

        //    //Response.Write("<script LANGUAGE='Javascript'>alert('Saved Successfully')</script");

        //}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void CALCULATE_Click(object sender, EventArgs e)
        {
            LoadSum();
            decimal a, b, c, d, g, i, h = 0;
            a = Convert.ToDecimal(txtqty.Text);
            b = Convert.ToDecimal(txtprice.Text);
            c = a * b;
            txtprice.Text = c.ToString();
            d = Convert.ToDecimal(txtcgst.Text);
            //f = Convert.ToInt32(txtsgst.Text);
            g = d / 100;
            txtprice.Text = g.ToString();
            i = Convert.ToDecimal(txttax.Text);
            h = g + c + i ;
            txtprice.Text = h.ToString();
            h = +h;
            txtnetamount.Text = h.ToString();
            
           

            
            //t = Convert.ToDecimal(txtgross.Text);
            //t = t + h;
            //TextBox5.Text = t.ToString();
            
            


        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            LoadSum();
            getcon();
            String sel = "Select Size,Unit_Price,Sgst,Cgst,Tax_Amnt from product_details_tbl  where Pname='" + DropDownList1.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();


            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                txtsize.Text = dt.Rows[0][0].ToString();

                txtprice.Text = dt.Rows[0][1].ToString();

                // txttot.Text = dt.Rows[0][3].ToString();
                txtcgst.Text = dt.Rows[0][2].ToString();
                txtsgst.Text = dt.Rows[0][3].ToString();
                txttax.Text = dt.Rows[0][4].ToString();

            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            LoadSum();
            getcon();
            


            string ins = "insert into Sale_Invoice_Tbl(Bill_No,Pname,Size,Quantity,Price,Tax_Total,Sgst,Cgst,Date)values('" + lblbillno.Text.Trim() + "','" + DropDownList1.SelectedItem.Text.Trim() + "','" + txtsize.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtprice.Text.Trim() + "','" + txttax.Text.Trim() + "','" + txtsgst.Text.Trim() + "','" + txtcgst.Text.Trim() + "','" + txtdate.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Item Added To List! :-)')</script>");
            String select = "select * from Sale_Invoice_Tbl";
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


            string billins = "insert into trialsaletbl(Pname,Quantity,Size,Date,Bill_No,Price)values('" + DropDownList1.SelectedItem.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtsize.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + lblbillno.Text.Trim() + "','" + txtprice.Text.Trim() + "')";
            cmd = new SqlCommand(billins, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adr2 = new SqlDataAdapter(cmd);
            DataTable dt2 = new DataTable();

            adr2.Fill(dt2);

            lblbillno.Text = "";
            DropDownList1.SelectedItem.Text = "";
            txtsize.Text = "";
            txtqty.Text = "";

            txtprice.Text = "";
            txttax.Text = "";

            txtsgst.Text = "";
            txtcgst.Text = "";
            
           

            //Response.Write("<script LANGUAGE='Javascript'>alert('Saved Successfully')</script");


        }

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    getcon();
        //    String Item_No = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label7")).Text;
        //    string del = "delete from Sale_New_Tbl where Item_No=" + Item_No;
        //    SqlCommand cmd = new SqlCommand(del, con);
        //    //Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
        //    GridView1.Visible = true;
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    grid();
        //}

        //protected void btnclear_Click(object sender, EventArgs e)
        //{
        //    getcon();

        //    String delete = ("delete from Sale_New_Tbl  where Pname=('" + DropDownList1.SelectedItem.Text + "' )");
        //    cmd = new SqlCommand(delete, con);
        //    cmd.ExecuteNonQuery();


        //    //Response.Write("<script LANGUAGE='JavaScript' >alert('Data Deleted Successfully')</script>");
        //    SqlDataAdapter adr = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();

        //    adr.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        GridView1.DataSource = null;
        //        GridView1.Visible = false;
        //        GridView1.DataBind();


        //    }




        //    lblbillno.Text = "";
        //    DropDownList1.SelectedItem.Text = "";
        //    txtsize.Text = "";
        //    txtqty.Text = "";

        //    txtprice.Text = "";
        //    txttax.Text = "";

        //    txtsgst.Text = "";
        //    txtcgst.Text = "";
        //}

        //protected void gridview1_rowdatabound(object sender, gridviewroweventargs e)
        //{

        //    if (e.row.rowtype == datacontrolrowtype.datarow)
        //    {
        //        string name = txtgrand.text;
        //        sqlcommand cmd = new sqlcommand("select sum(price) from sale_new_tbl where pname=@pname", con);
        //        cmd.parameters.add(new sqlparameter("@pname", name));
        //        sqldatareader dr = cmd.executereader();
        //        //if (dr.read())
        //        //{
        //        //    label total_label = (label)e.row.findcontrol("your total bill is:-");
        //        //    object value = dr.getvalue(0);
        //        //    total_label.text = value.tostring();
        //        //}
        //    }
        //}

       


        protected void LoadSum()
        {


            getcon();
            String sel = "  select sum(Price)  FROM [organicdb].[dbo].[Sale_Invoice_Tbl] ";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();


            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                

                txtnetamount.Text = dt.Rows[0][0].ToString();
            }


            con.Close();
        }

        protected void btnaddnew_Click(object sender, EventArgs e)
        {
            getcon();

            GridView1.DataSource = null;
            GridView1.DataBind();

            GridView1.Visible = true;

           
            string delete = "delete from Sale_Invoice_Tbl";
            cmd = new SqlCommand(delete, con);
            cmd.ExecuteNonQuery();

            SqlDataAdapter adr1 = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();

            adr1.Fill(dt1);




            string billins1 = "insert into total_tbl(Total)values('" + txtnetamount.Text.Trim() + "')";
            cmd = new SqlCommand(billins1, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adr3 = new SqlDataAdapter(cmd);
            DataTable dt3 = new DataTable();

            adr3.Fill(dt3);



            //string ins1 = "insert into Sale_Bill_Rep(Bill_No,Pname,Size,Quantity,Price,Tax_Total,Sgst,Cgst,Date)values('" + lblbillno.Text.Trim() + "','" + DropDownList1.SelectedItem.Text.Trim() + "','" + txtsize.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtprice.Text.Trim() + "','" + txttax.Text.Trim() + "','" + txtsgst.Text.Trim() + "','" + txtcgst.Text.Trim() + "','"+ txtdate.Text.Trim() + "')";
            //cmd = new SqlCommand(ins1, con);
            //cmd.ExecuteNonQuery();
            //SqlDataAdapter adr2 = new SqlDataAdapter(cmd);
            //DataTable dt2 = new DataTable();

            //adr.Fill(dt);




            //Response.Write("<script LANGUAGE='JavaScript' >alert('Data Deleted Successfully')</script>");
            //SqlDataAdapter adr1 = new SqlDataAdapter(cmd);
            //DataTable dt1 = new DataTable();

            //adr.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{
            //    GridView1.DataSource = dt;
            //    GridView1.Visible = false;
                
            //    GridView1.DataBind();
               


            //}




           
            DropDownList1.SelectedItem.Text = "";
            txtsize.Text = "";
            txtqty.Text = "";

            txtprice.Text = "";
            txttax.Text = "";

            txtsgst.Text = "";
            txtcgst.Text = "";
           
            
            
        }
    }
}
       


    

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
    public partial class loginform : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Registbl where username =@username and password=@password", con);

            cmd.Parameters.AddWithValue("@username", txtuser_id.Text);

            cmd.Parameters.AddWithValue("@password", txtpswd.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Session["Username"] = txtuser_id.Text;
                Response.Redirect("emp_login_topage.aspx");


            }
            else if (txtuser_id.Text == "admin" && txtpswd.Text == "admin")
            {
                Response.Redirect("admin_login_to.aspx");
            }

            else
            {

                txtuser_id.Text = "";
                txtpswd.Text = "";
                Response.Write("<script language=javascript>alert('Invalid username and password')</script>");
            }
        }
    }
}
            
           
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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();
        }

       

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from logintbl where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username",txtusername.Text);
            cmd.Parameters.AddWithValue("@password",txtpassword.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //int typeid =Convert.ToInt32(dt.Rows[0][3].ToString());
            //Response.Write(typeid);
            //Session["typeid"]=typeid;
             cmd.ExecuteNonQuery();
            con.Close();

            int category =Convert.ToInt32(dt.Rows[0][3].ToString());

            Response.Write(category);
            if(dt.Rows.Count>0)
            {
                if(category==1)
                {
                    Response.Redirect("Admin_Home.aspx");
                }
                else if(category==2)
                {
                    Response.Redirect("Employeehome.aspx");

                }
            }

        

        
    }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            string ins = "insert into empregtbl([Username],[Password],Email,Address,Contact,Designation)values('" + txtuser_name.Text.Trim() + "','" + txt_password.Text.Trim() + "','" + txt_email.Text.Trim() + "','" + txt_address.Text.Trim() + "','" + txt_number.Text.Trim() + "','" + dropdownlist1.SelectedItem.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtuser_name.Text = "";
            txt_password.Text = "";
            txt_email.Text = "";
            txt_address.Text = "";
            txt_number.Text = "";
            dropdownlist1.SelectedItem.Text = "";

            Response.Write("<script LANGUAGE='Javascript'>alert(' Registered Successfully')</script");
        }
    }
}
    

        
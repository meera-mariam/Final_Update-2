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
    public partial class New_Regis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        String ID = "EMP-WEL-#1100";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();
        }

        public void GenerateAutoID()
        {
            getcon();
            string str = "select count(Emp_Reg_Id)from Registbl";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());


            con.Close();
            i++;
            lblEMPID.Text = ID + i.ToString();
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            getcon();

            string ins = "insert into Registbl (Name,Address,Contact,Username,Password,[Email Id],DOB,Gender,Designation,DateofJoining)values('" + txtname.Text.Trim() + "','" + txtaddress.Text.Trim() + "','" + txtcontact.Text.Trim() + "','" + txtuser_id.Text.Trim() + "','" + txtpswd.Text.Trim() + "','" + txtemail.Text.Trim() + "','" + txtdob.Text.Trim() + "','" + RadioButtonList1.SelectedItem.Text.Trim() + "','" + txtdesg.Text.Trim() + "','" + txtdoj.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtname.Text = "";
            txtaddress.Text = "";
            txtcontact.Text = "";
            txtuser_id.Text = "";
            txtpswd.Text = "";
            txtemail.Text = "";
            txtdob.Text = "";
            RadioButtonList1.Text = "";
            txtdesg.Text = "";
            txtdoj.Text = "";


            Response.Write("<script LANGUAGE='Javascript'>alert('Registration Successful')</script");
        }
    }
}
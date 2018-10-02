using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JARTraining2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JAR_trainingConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[user_id_t] WHERE User_Name =@username AND Password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtUserN.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
            //int count = Convert.ToInt32(cmd.ExecuteScalar());
            int count = 0;
            SqlDataReader myRead = cmd.ExecuteReader();
            while (myRead.Read())
            {
                count = count + 1;
            }    

            if (count == 1)
            {
                Session["username"] = txtUserN.Text.Trim();
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblInvalid.Visible = true;
            }
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }
    }
}
using GeniusBoiApp.Models;
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
    public partial class _Default : Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["JAR_trainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
                lblWelcome.Text = "You've posted back";
            else
                lblWelcome.Text = "Welcome";

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            person.name = txtName.Text;

            Skill skills = new Skill();
            skills.skillName = txtSkill.Text;
            //skills.skillHoursLearn = int.Parse(txtSkillHoursLearn.Text);
            //skills.skillHoursSpent = int.Parse(txtSkillHoursSpent.Text);
            person.Skills = new List<Skill>();
            person.Skills.Add(skills);

            myConnection.Open();
            string query = "Insert into [dbo].[test1](fName,sName) Values (@fName,@sName)";
            SqlCommand insertCommand = new SqlCommand(query, myConnection);
            insertCommand.Parameters.AddWithValue("@fName", person.name);
            insertCommand.Parameters.AddWithValue("@sName", skills.skillName);            
            insertCommand.ExecuteNonQuery();
            myConnection.Close();
            GridView1.DataBind();

        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            try
            {
                string pNameTemp = ddlUpdate.SelectedValue;
                myConnection.Open();
                SqlCommand com = new SqlCommand("SELECT sName from [dbo].[test1] WHERE fName LIKE @field", myConnection);
                com.Parameters.AddWithValue("@field", pNameTemp);
                txtEditSkill.Text = com.ExecuteScalar().ToString();
                myConnection.Close();
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string pNameTemp = ddlUpdate.SelectedValue;
                string sNameTemp = txtEditSkill.Text;
                myConnection.Open();
                SqlCommand com = new SqlCommand("UPDATE [dbo].[test1] SET sName = (@sName) WHERE fName LIKE @field", myConnection);
                com.Parameters.AddWithValue("@field", pNameTemp);
                com.Parameters.AddWithValue("@sName", sNameTemp);
                com.ExecuteNonQuery();
                //txtEditSkill.Text = com.ExecuteScalar().ToString();
                myConnection.Close();
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void btnDeleteUser_Click(object sender, EventArgs e)
        {
            try
            {
                string nameTemp = ddlDelete.SelectedValue;
                
                myConnection.Open();
                SqlCommand com = new SqlCommand("DELETE FROM [dbo].[test1] WHERE CONCAT(fName, ' ', sName) LIKE @field", myConnection);
                com.Parameters.AddWithValue("@field", nameTemp);                
                com.ExecuteNonQuery();
                //txtEditSkill.Text = com.ExecuteScalar().ToString();
                myConnection.Close();
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            var index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //getdata();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Sign_in.aspx");
        }

        
    }
}
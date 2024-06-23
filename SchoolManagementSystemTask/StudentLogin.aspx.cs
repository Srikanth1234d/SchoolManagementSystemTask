using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystemTask
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        //Student Login
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-A2FUNJS\\MSSQLSERVER01;Initial Catalog=SchoolManagementSystem;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT [Educational Status] FROM StudentLogin WHERE UserName=@UserName AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserName", Usertxt.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", passwordtxt.Text.Trim());
                con.Open();
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    string educationalStatus = result.ToString();
                    Session["UserName"] = Usertxt.Text.Trim();
                    Session["Educational Status"] = educationalStatus;
                   // StudentList();
                    Response.Redirect("StudentDashboard.aspx");
                }
                else
                {
                    msglbl.Text = "Invalid username or password";
                }
            }
        }
       
    }
}

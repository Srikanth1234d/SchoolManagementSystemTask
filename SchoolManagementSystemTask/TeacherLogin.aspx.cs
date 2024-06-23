using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SchoolManagementSystemTask
{
    public partial class TeacherLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadStudentData();
                //string username = Session["Username"] as string;
                int teacherId = GetLoggedInTeacherId();
                if (teacherId > 0)
                {
                    display(teacherId);
                }
                else
                {
                    //Response.Write("<script>alert('Invalid teacher ID');</script>");
                }
            }
            
        }



        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-A2FUNJS\\MSSQLSERVER01;Initial Catalog=SchoolManagementSystem;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                var query = "SELECT TOP 1 * FROM TeacherLogin WHERE Username=@Username AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", Usertxt.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", passwordtxt.Text.Trim());
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                var data = cmd.ExecuteScalar();
                if (data != null)
                {
                    // Login successful
                    Session["Username"] = data;
                    //LoadStudentData();
                    //Response.Redirect("SchoolManagementSystem.aspx");
                    Response.Redirect("TeacherDashboard.aspx");
                }
                else
                {
                    // Login failed
                    Response.Write("<script>alert('Invalid username or password');</script>");
                }

            }
        }     
        private void display(int teacherId)
        {
            string connectionString = "Data Source=DESKTOP-A2FUNJS\\MSSQLSERVER01;Initial Catalog=SchoolManagementSystem;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Students WHERE TeacherId = @TeacherId", con);
                da.SelectCommand.Parameters.AddWithValue("@TeacherId", teacherId);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Grid.DataSource = dt;
                Grid.DataBind();
            }
        }
       
        private int GetLoggedInTeacherId()
        {
            int teacherId = 1;
            string connectionString = "Data Source=DESKTOP-A2FUNJS\\MSSQLSERVER01;Initial Catalog=SchoolManagementSystem;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT TeacherID FROM TeacherLogin WHERE Username = @Username";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", Usertxt.Text);
                con.Open();
                teacherId = Convert.ToInt32(cmd.ExecuteScalar());
            }
            return teacherId;
        }
    }
}



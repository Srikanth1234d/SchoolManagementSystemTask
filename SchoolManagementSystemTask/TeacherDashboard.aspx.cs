using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystemTask
{
    public partial class TeacherDashboard : System.Web.UI.Page
    {
        private string connectionString = "Data Source=DESKTOP-A2FUNJS\\MSSQLSERVER01;Initial Catalog=SchoolManagementSystem;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string teacherIdQuery = Session["Username"].ToString();//Request.QueryString["TeacherId"];
                if (int.TryParse(teacherIdQuery, out int teacherId))
                {
                    BindGrid(teacherId.ToString());
                }
                else
                {
                    // Handle case where TeacherId is not provided or invalid
                    // For example, show all students or an error message
                    BindGrid(null);
                }
            }
        }
      

        private void BindGrid(string teacherId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM StudentData";
                
                if (teacherId!="")
                {
                    query += " WHERE TeacherId ="+ teacherId;
                }

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (teacherId!="")
                    {
                        cmd.Parameters.AddWithValue("@TeacherId", teacherId);
                    }
                    //cmd.Parameters.AddWithValue("@TeacherId", teacherId);

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        TeacherGridview.DataSource = dt;
                        TeacherGridview.DataBind();
                    }
                }
            }
        }

        //[System.Web.Services.WebMethod]
        //public static string GetStudents()
        //{
        //    int teacherId = Convert.ToInt32(HttpContext.Current.Session["TeacherId"]);
        //    string connectionString = "Data Source=DESKTOP-A2FUNJS\\MSSQLSERVER01;Initial Catalog=SchoolManagementSystem;Integrated Security=True;";
        //    List<Students> students = new List<Students>();

        //    using (SqlConnection conn = new SqlConnection(connectionString))
        //    {
        //        string query = "SELECT Id ,Name, Class, Division, Address,[Educational Status]FROM TeacherLogin " +
        //            "INNER JOIN StudentData ON TeacherLogin.TeacherId = StudentData.TeacherId;";
        //        SqlCommand cmd = new SqlCommand(query, conn);
        //        cmd.Parameters.AddWithValue("@TeacherId", teacherId);

        //        conn.Open();
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        while (readsssser.Read())
        //        {
        //            students.Add(new Students
        //            {
        //                Id = Convert.ToInt32(reader["id"]),
        //                Name = Convert.ToString(reader["name"]),
        //                Class= Convert.ToString(reader["Class"]),
        //                Division = Convert.ToString(reader["Division"]),
        //                Address = Convert.ToString(reader["Address"]),
        //                EducationalStatus = Convert.ToString(reader["Educational Status"]),
        //            });
        //        }
        //    }

        //    JavaScriptSerializer js = new JavaScriptSerializer();
        //    return js.Serialize(students);
        //}

    }

}
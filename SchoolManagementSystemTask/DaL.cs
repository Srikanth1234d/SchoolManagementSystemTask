using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;



namespace SchoolManagementSystemTask
{
    public class DaL
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["TeacharLogin"].ConnectionString;
        
        public Teacher GetTeacher(string username, string password)
        {
            Teacher teacher = null;
           
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = "SELECT * FROM TeacherLogin WHERE Username = @Username AND Password = @Password";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    TeachersLogin tl = new TeachersLogin
                    {
                        TeacherId = Convert.ToInt32(reader["TeacherID"]),
                        UserName = reader["UserName"].ToString(),
                        Password = reader["Password"].ToString()
                    };
                }
            }

            return teacher;
        }

        public List<Students> GetStudentsByTeacher(int teacherId)
        {
            List<Students> students = new List<Students>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = "SELECT Id, Name, Address, Class, Division, [Educational Status]  FROM StudentData WHERE TeacherID = @TeacherID";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@TeacherID", teacherId);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Students student = new Students
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        Name = reader["Name"].ToString(),
                        Class = reader["Class"].ToString(),
                        Division = reader["Division"].ToString(),
                        Address = reader["Address"].ToString(),
                        EducationalStatus = reader["Educational Status"].ToString(),
                        TeacherId = Convert.ToInt32(reader["TeacherID"])
                    };
                    students.Add(student);
                }
            }

            return students;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace SchoolManagementSystemTask
{
    public partial class StudentsDashboards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string id = Session["Id"].ToString();//Request.QueryString["TeacherId"];
                if (int.TryParse(id, out int Education))
                {
                    LoadStudentData(Education.ToString());
                }
              
            }
        }
        private void LoadStudentData(string Id)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["StudentData"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM StudentData";

                if (Id != "")
                {
                    query += " WHERE Id =" + Id;
                }

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (Id != "")
                    {
                        cmd.Parameters.AddWithValue("@Id", Id);
                    }
                    
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    StudentView.DataSource = dt;
                    StudentView.DataBind();
                }
            }
        }
    }
}

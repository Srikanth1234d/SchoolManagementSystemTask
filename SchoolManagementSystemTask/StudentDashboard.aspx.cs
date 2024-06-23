using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystemTask
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            //StudentList();
        }

        protected void griddisplay_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //private void StudentList()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["StudentData"].ConnectionString;
        //    using (SqlConnection conn = new SqlConnection(connectionString))
        //    {
        //        SqlCommand cmd = new SqlCommand("SELECT Id, Name, Address, Class, Division, [Educational Status] FROM StudentData Where Id ='" + txtId.Text + "'", conn);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        griddisplay.DataSource = dt;
        //        griddisplay.DataBind();
        //    }
        }
    }

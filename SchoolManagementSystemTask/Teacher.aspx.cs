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
    public partial class Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadTeacharData();
            }
        }
        private void LoadTeacharData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TeacharData"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT Id,Name,Class,Contact,Division,Address FROM TeacherData where Id ='" + Idtxt.Text + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                grid.DataSource = dt;
                grid.DataBind();
            }
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TeacharData"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT Id,Name,Class,Contact,Division,Address FROM TeacherData where Id ='" + Idtxt.Text + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                grid.DataSource = dt;
                grid.DataBind();

                Idtxt.Text = "";
                Nametxt.Text = "";
                Classtxt.Text = "";
                Contacttxt.Text = "";
                Divisiontxt.Text = "";
                Addresstxt.Text = "";
            }
        }

        protected void restbtn_Click(object sender, EventArgs e)
        {
            Idtxt.Text = "";
            Nametxt.Text = "";
            Classtxt.Text = "";
            Contacttxt.Text = "";
            Divisiontxt.Text = "";
            Addresstxt.Text = "";
        }
    }
}
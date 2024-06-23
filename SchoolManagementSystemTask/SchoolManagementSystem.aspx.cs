using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SchoolManagementSystemTask
{
    public partial class SchoolManagementSystem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

       
        public void status()
        {


        }

        private void btnSave_Click()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["StudentData"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                var query = "SELECT Id, Name, Address, Class, Division, [Educational Status] FROM StudentData Where Id=@Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", Idtxt.Text.Trim());

                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                var data = cmd.ExecuteScalar();
                if (data != null)
                {

                    Session["Id"] = data;
                    Response.Redirect("StudentsDashboards.aspx");
                    Idtxt.Text = "";
                    Nametxt.Text = "";
                    Classtxt.Text = "";
                    Divisiontxt.Text = "";
                    Addresstxt.Text = "";
                    Educationaltxt.Text = "";

                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string Educational = Educationaltxt.Text;
            if (Educational == "Excellent" || Educational == "Good" || Educational == "Average" || Educational == "Poor" || Educational == "")
            {
                btnSave_Click();

            }
            else
            {
                Response.Write("<script>alert('Empty Educational');</script>");
            }


        }

        protected void Resetbtn_Click(object sender, EventArgs e)
        {
            Idtxt.Text = "";
            Nametxt.Text = "";
            Classtxt.Text = "";
            Divisiontxt.Text = "";
            Addresstxt.Text = "";
            Educationaltxt.Text = "";
        }
    }
}

       




  

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectManagement
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void clearForm()
        {
            txtbxProject.Text = "";
            txtbxPurpose.Text = "";
            txtbxProjectManager.Text = "";
            DdlStatus.Text = "";
            txtbxDueDate.Text = "";
            DdlType.Text = "";
            txtbxProjectNumber.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            { 
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = con;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "INSERT INTO Projects (Project, Number, Purpose, Manager, Current_Due_Date, Status, Type)" +
                        " VALUES (@Project, @Number, @Purpose, @Manager, @Current_Due_Date, @Status, @Type)";
                    command.Parameters.AddWithValue("@Project", txtbxProject.Text);
                    command.Parameters.AddWithValue("@Number", txtbxProjectNumber.Text);
                    command.Parameters.AddWithValue("@Purpose", txtbxPurpose.Text);
                    command.Parameters.AddWithValue("@Manager", txtbxProjectManager.Text);
                    command.Parameters.AddWithValue("@Current_Due_Date", txtbxDueDate.Text);
                    command.Parameters.AddWithValue("@Status", DdlStatus.Text);
                    command.Parameters.AddWithValue("@Type", DdlType.Text);
                    int rows = command.ExecuteNonQuery();
                    if (rows == 1)
                    {
                        lblError.ForeColor = Color.Green;
                        lblError.Text = "Success.";
                        clearForm();
                    } else
                    {
                        lblError.ForeColor = Color.Red;
                        lblError.Text = "Error. Plese make sure all fields are filled in and the project number is unique.";
                    }
                }
                con.Close();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearForm();
        }

        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Edit.aspx");
        }
    }
}
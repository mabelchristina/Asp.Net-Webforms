using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Response.Redirect("HomePage.aspx");
                Label1.Text = "Login Succesful";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
        static string connectionString = ConfigurationManager.ConnectionStrings["WebFormsConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected bool AuthenticateUser(string Email, string Password)
        {
            SqlCommand command = new SqlCommand("LogInCredentials", this.connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter parameterEmail = new SqlParameter("@Email", Email);
            SqlParameter parameterPassword = new SqlParameter("@Password", Password);
            command.Parameters.Add(parameterEmail);
            command.Parameters.Add(parameterPassword);
            this.connection.Open();
            int ReturnCode = (int)command.ExecuteScalar();
            return ReturnCode == 1;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
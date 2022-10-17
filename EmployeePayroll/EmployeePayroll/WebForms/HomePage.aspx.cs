using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
         Response.Redirect("PayrollForm.aspx");
        }
        static string connectionString = ConfigurationManager.ConnectionStrings["WebFormsConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value.ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("delete from PayformDetails where ID='" + id + "'", connection);
            int t = command.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data is Deleted')</script>");
                GridView3.EditIndex = -1;
                GridView3.DataBind();
            }
        }
    }
}
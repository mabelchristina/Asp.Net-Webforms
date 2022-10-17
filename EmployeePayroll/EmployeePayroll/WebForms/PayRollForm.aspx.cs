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
    public partial class PayRollForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Fill Years
                for (int i = 2014; i <= 2022; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //set current year as selected

                //Fill Months
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                ddlMonth.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; // Set current month as selected

                //Fill days
                FillDays();
            }

        }
        public void FillDays()
        {
            ddlDay.Items.Clear();
            //getting numbner of days in selected month & year
            int noOfDays = DateTime.DaysInMonth(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue));

            //Fill days
            for (int i = 1; i <= noOfDays; i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
            ddlDay.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;// Set current date as selected
        }

        static string connectionString = ConfigurationManager.ConnectionStrings["WebFormsConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("PayformCredentials", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@NAME", TextBox1.Text);
            command.Parameters.AddWithValue("@IMG", RadioButtonList1.SelectedValue);
            command.Parameters.AddWithValue("@GENDER", RadioButtonList2.SelectedValue);
            string checkList = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (checkList == "")
                    {
                        checkList = CheckBoxList1.Items[i].Value;
                    }
                    else
                    {
                        checkList += " " + CheckBoxList1.Items[i].Value;
                    }
                }
            }
            command.Parameters.AddWithValue("@DEPARTMENT", checkList);
            command.Parameters.AddWithValue("@SALARY", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@START_DATE", ddlDay.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue);
            command.Parameters.AddWithValue("@NOTES", TextBox2.Text);
            connection.Open();
            var datareader = command.ExecuteReader();
            if (datareader != null)
            {
                Session["data"] = datareader;
                Response.Redirect("HomePage.aspx");
                Label8.Text = "!!! Payform Details inserted succesfully into the database !!!";
                Label8.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label8.Text = "!!! Details are not inserted into the database !!!";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
            connection.Close();
        }

        protected void ddlMonth_SelectedIndexChanged1(object sender, EventArgs e)
        {
            FillDays();
        }

        protected void ddlYear_SelectedIndexChanged1(object sender, EventArgs e)
        {
            FillDays();
        }

   
    }
}
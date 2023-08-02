using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string ConnectionString = "Data Source=Niharika_Sharma\\SQLEXPRESS;Initial Catalog=AppointmentSchedule;Integrated Security=True";

            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();

            string Email = email.Text;
            string Password = pass.Text;

            if (Email == "admin@gmail.com" && Password == "admin@123")
            {
                // Admin login detected, redirect to admin page
                con.Close();
                Response.Redirect("AdminPage.aspx");
                return;
            }

            string Query = "SELECT COUNT(*) FROM UserDetails WHERE Email='" + Email + "' AND Password='" + Password + "'";
            SqlCommand cmd = new SqlCommand(Query, con);
            int userCount = (int)cmd.ExecuteScalar();

            // If the user is found in the UserDetails table, fetch the first name
            string firstName = "";
            string phoneNum = "";
            if (userCount > 0)
            {
                string firstNameQuery = "SELECT FirstName, PhoneNumber FROM UserDetails WHERE Email='" + Email + "'";
                SqlCommand firstNameCmd = new SqlCommand(firstNameQuery, con);
                firstName = (string)firstNameCmd.ExecuteScalar();
                phoneNum = (string)firstNameCmd.ExecuteScalar();
            }

            con.Close();

            if (userCount > 0)
            {
                // Store the first name in a session variable
                Session["FirstName"] = firstName;
                Session["PhoneNumber"] = phoneNum;

                string message = "Login successful!";
                string script = "alert('" + message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                string message = "Login failed. Incorrect email or password!";
                string script = "alert('" + message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }

    }
}
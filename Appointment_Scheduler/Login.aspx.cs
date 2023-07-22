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

            string Query = "SELECT COUNT(*) FROM UserDetails WHERE Email='" + Email + "' AND Password='" + Password + "'";
            SqlCommand cmd = new SqlCommand(Query, con);
            int userCount = (int)cmd.ExecuteScalar();

            con.Close();

            if (userCount > 0)
            {
                string message = "Login successful!";
                string script = "alert('" + message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
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
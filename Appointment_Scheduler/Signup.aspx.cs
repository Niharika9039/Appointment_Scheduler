using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LoginSignup
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            string ConnectionString = "Data Source=Niharika_Sharma\\SQLEXPRESS;Initial Catalog=AppointmentSchedule;Integrated Security=True";

            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();

            string FirstName = firstname.Text;
            string LastName = lastname.Text;
            string Email = email.Text;
            string Password = pass.Text;
            string Confirm = conf.Text;

            if (Password != Confirm)
            {
                string msg = "Password and Confirm Password do not match!";
                string sct = "alert('" + msg + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", sct, true);
                return; // Do not proceed with saving data if the passwords don't match
            }

            string Query = "insert into UserDetails (FirstName, LastName, Email, Password) values ('"+FirstName+"', '"+LastName+"','"+Email+"', '"+Password+"')";

            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.ExecuteNonQuery();

            con.Close();

            string message = "Data saved successfully!";
            string script = "alert('" + message + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}
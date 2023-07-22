using System;
using System.Data.SqlClient;

namespace Appointment_Scheduler
{
    public partial class Schedule_appoint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "success" query parameter exists and display the success message
            if (Request.QueryString["success"] == "true")
            {
                string message = "Appointment requested successfully!";
                string script = "alert('" + message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }

        }

        protected void request_Click(object sender, EventArgs e)
        {
            string ConnectionString = "Data Source=Niharika_Sharma\\SQLEXPRESS;Initial Catalog=AppointmentSchedule;Integrated Security=True";

            // Retrieve input data from form fields
            string fullName = name.Text;
            string Email = email.Text;
            string clientName = Clientname.Text;
            DateTime appointmentDateTime;

            // Perform date-time parsing and validation
            if (DateTime.TryParse(date.Text, out appointmentDateTime))
            {
                // Valid date-time format, proceed with saving to the database
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();

                    // Insert data into the "appointments" table using parameterized query
                    string query = "INSERT INTO Appointments (full_name, email, client_name, date_time) VALUES (@fullName, @Email, @clientName, @appointmentDateTime)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@fullName", fullName);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@clientName", clientName);
                    cmd.Parameters.AddWithValue("@appointmentDateTime", appointmentDateTime);

                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        // Redirect to the same page with a success message query parameter
                        Response.Redirect(Request.Url.AbsoluteUri + "?success=true");


                        // Clear the form fields
                        name.Text = string.Empty;
                        email.Text = string.Empty;
                        Clientname.Text = string.Empty;
                        date.Text = string.Empty;

                        // Refresh the page to remove previous entries
                        Response.Redirect(Request.Url.AbsoluteUri);
                    }
                    else
                    {
                        // Failed to request the appointment
                        string message = "Failed to request the appointment. Please try again.";
                        string script = "alert('" + message + "');";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                    }
                }
            }
            else
            {
                // Invalid date-time format, show an error message
                string message = "Invalid date-time format. Please enter a valid date and time.";
                string script = "alert('" + message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
    }
}

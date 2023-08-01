using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Appointment_Scheduler
{
    public partial class AdminPage : System.Web.UI.Page
    {
        private const string EDIT_MODE_KEY = "EditMode";
        private string ConnectionString = "Data Source=Niharika_Sharma\\SQLEXPRESS;Initial Catalog=AppointmentSchedule;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Enable the timer control and set its interval (in milliseconds)
                timerAutoDelete.Enabled = true;
                timerAutoDelete.Interval = 60000; // 1 minute (adjust as needed)

                appointmentsGrid.Visible = false;
                // Load appointments data for the logged-in client           
                LoadAppointments();                            
            }
        }

        protected void appointmentsGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            appointmentsGrid.EditIndex = e.NewEditIndex;
            LoadAppointments(); // Reload the GridView to show the editable row
        }
        protected void appointmentsGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < appointmentsGrid.Rows.Count)
            {
                int appointmentsId = Convert.ToInt32(appointmentsGrid.DataKeys[e.RowIndex].Value.ToString());
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("delete from Appointments where id='" + appointmentsId + "' ", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        appointmentsGrid.EditIndex = -1;
                        LoadAppointments();
                    }
                }
            }
        }
        protected void appointmentsGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < appointmentsGrid.Rows.Count)
            {
                int appointmentId = Convert.ToInt32(appointmentsGrid.DataKeys[e.RowIndex].Value.ToString());
                string name = ((TextBox)appointmentsGrid.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
                string email = ((TextBox)appointmentsGrid.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
                string client = ((TextBox)appointmentsGrid.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
                string date = ((TextBox)appointmentsGrid.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

                DateTime appointmentDateTime;
                if (DateTime.TryParse(date, out appointmentDateTime))
                {
                    using (SqlConnection con = new SqlConnection(ConnectionString))
                    {
                        con.Open();
                        string updateQuery = "UPDATE Appointments SET full_name = @fullName, email = @email, "
                            + "client_name = @clientName, date_time = @appointmentDateTime WHERE id = @appointmentId";

                        using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                        {
                            cmd.Parameters.AddWithValue("@fullName", name);
                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Parameters.AddWithValue("@clientName", client);
                            cmd.Parameters.AddWithValue("@appointmentDateTime", appointmentDateTime);
                            cmd.Parameters.AddWithValue("@appointmentId", appointmentId);

                            int t = cmd.ExecuteNonQuery();
                            if (t > 0)
                            {
                                appointmentsGrid.EditIndex = -1;
                                LoadAppointments();
                            }
                        }
                    }
                }
                else
                {
                    // Handle the case when the appointment date is not in a valid format
                    // For example, display an error message or log the issue.
                }
            }
        }
        protected void appointmentsGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Cancel the edit mode and reset the GridView
            appointmentsGrid.EditIndex = -1;
            LoadAppointments();
        }

        protected void LoadAppointments()
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                // Use parameterized query to prevent SQL injection
                string selectQuery = "SELECT * FROM Appointments";
                using (SqlCommand cmd = new SqlCommand(selectQuery, con))
                {
                    
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        appointmentsGrid.DataSource = dr;
                        appointmentsGrid.DataBind();
                        appointmentsGrid.Visible = true;
                    }
                    else
                    {
                        // If there are no rows, hide the GridView
                        appointmentsGrid.Visible = false;
                    }
                }
            }
        }

        protected void timerAutoDelete_Tick(object sender, EventArgs e)
        {

            // Output a message to see if the timer is being triggered
            Response.Write("Timer ticked! Current time: " + DateTime.Now.ToString() + "<br>");

            // Call the method to delete expired appointments
            DeleteExpiredAppointments();
        }

        protected void appointmentsGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Start the timer (if not already started) to trigger auto-deletion
                if (!timerAutoDelete.Enabled)
                {
                    timerAutoDelete.Enabled = true;
                }
            }
        }

        protected void DeleteExpiredAppointments()
        {
            DateTime currentTime = DateTime.Now;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
               
                    //Delete expired appointments
                    string deleteQuery = "DELETE FROM Appointments WHERE date_time < @currentTime";

                    using (SqlCommand deleteCmd = new SqlCommand(deleteQuery, con))
                    {
                        deleteCmd.Parameters.AddWithValue("@currentTime", currentTime);
                        int rowsAffected = deleteCmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Refresh the appointments table after deleting the expired appointments
                            LoadAppointments();
                        }
                    }
                }
            }
        }

    }

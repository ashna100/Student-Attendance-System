using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System_Online
{
    public partial class TeacherMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblshow.Text = "Hey Teacher &nbsp;" + Session["TeacherName"].ToString() + "!!";
        }

        protected void Button1_Click(object sender, EventArgs e)//home button
        {
            Response.Redirect("Teacher_Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)//Mark_Attendance
        {
            Response.Redirect("Mark_Attendance.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)//Teacher_Lectures
        {
            Response.Redirect("Teacher_Lectures.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)//Logout
        {

            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
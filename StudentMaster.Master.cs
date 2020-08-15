using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System_Online
{
    public partial class StudentMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblshow.Text = "Hello &nbsp" + Session["StudentName"].ToString() + "!!";
        }

        protected void Button4_Click(object sender, EventArgs e)//logout
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)//Student home
        {
            Response.Redirect("Student_Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)//Attendance
        {
            Response.Redirect("Student_Attendance.aspx");
        }
    }
}
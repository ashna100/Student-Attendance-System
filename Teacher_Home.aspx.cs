using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System_Online
{
    public partial class Teacher_Home : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["TUserID"] != null)
            //{
                label2.Text = "Welcome &nbsp;" + Session["TeacherName"].ToString();
            //    label1.Text = "Hello your Teacher ID is &nbsp;" + Session["TeacherID"].ToString();
            //    label4.Text = "Your Password is &nbsp" + Session["Password"].ToString();
            //    label3.Text = "Your User ID is &nbsp" + Session["TUserID"].ToString();
            //}
        }
    }
}
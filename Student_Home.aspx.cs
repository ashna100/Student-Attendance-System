using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System_Online
{
    public partial class Student_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label1.Text = "Welcome &nbsp" + Session["StudentName"].ToString();
               
        }
    }
}
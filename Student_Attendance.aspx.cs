using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Attendance_System_Online
{
    public partial class Student_Attendance : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void button1_Click(object sender, EventArgs e)
        {

            if (textbox1.Text == "" && TextBox2.Text=="")
            {
                label1.Text = "Please select the dates";

            }

            else
            {
                string date = textbox1.Text;
                string date2 = TextBox2.Text;
                if (Session["StudentID"] != null)
                {
                    string studentID = Session["StudentID"].ToString();
                    SqlConnection con = new SqlConnection(str);
                    SqlDataAdapter sda = new SqlDataAdapter("select Date as Lecture_Date, Subject,Status as Attendance from StudentAttendance where  SID='" + studentID + "'and  Date BETWEEN '"+ date+"' and '"+date2+"'", con);

                    DataSet ds = new DataSet();

                    sda.Fill(ds, "StudentAttendance");

                    gridview1.DataSource = ds;
                    gridview1.DataBind();
                }
                else
                {
                    label1.Text = "Record not found";
                }
                

            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System_Online
{
    public partial class Teacher_Lectures : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DrpCourse();
            }
        }
        private void DrpCourse()
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Course", con);
            DropDownList1.DataSource = cmd.ExecuteReader();
            DropDownList1.DataTextField = "CourseName";
            DropDownList1.DataValueField = "CID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Course");
            con.Close();
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)//Adding semester
        {
            int CourseID = Convert.ToInt32(DropDownList1.SelectedValue);
            string year = DropDownList2.SelectedItem.Text;
            string sem = DropDownList5.SelectedItem.Text;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Subject where CID='" + CourseID + "' and Year='" + year + "' and Sem='" + sem + "'", con);
            DropDownList3.DataSource = cmd.ExecuteReader();
            DropDownList3.DataTextField = "SubjectName";
            DropDownList3.DataValueField = "SID";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "Select Subject");
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)//Select

        {
            if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year" && DropDownList5.SelectedValue == "Select Semester" && DropDownList3.SelectedValue == "Select Subject" && TextBox1.Text == "")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (TextBox1.Text == "")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList3.SelectedValue == "Select Subject")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList5.SelectedValue == "Select Semester")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course" && DropDownList5.SelectedValue == "Select Semester")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course" && DropDownList3.SelectedValue == "Select Subject")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course" && TextBox1.Text == " ")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year" && DropDownList5.SelectedValue == "Select Semester")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year" && TextBox1.Text == " ")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year" && DropDownList3.SelectedValue == "Select Subject")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList5.SelectedValue == "Select Semester" && TextBox1.Text == " ")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList5.SelectedValue == "Select Semester" && DropDownList3.SelectedValue == "Select Subject")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (TextBox1.Text == " " && DropDownList3.SelectedValue == "Select Subject")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (TextBox1.Text == " " && DropDownList3.SelectedValue == "Select Subject")
            {
                Label1.Text = "Plz Select All The Fields.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string date = TextBox1.Text;
                string course = DropDownList1.SelectedItem.Text;
                string year = DropDownList2.SelectedItem.Text;
                string subject = DropDownList3.SelectedItem.Text;
                string sem = DropDownList5.SelectedItem.Text;

                if (Session["TeacherID"] != null)
                {
                    string teacherID = Session["TeacherID"].ToString();

                    SqlConnection con = new SqlConnection(str);
                    SqlDataAdapter sda = new SqlDataAdapter("select Date as Lecture_Date,LTaken as Lecture_Taken from T_Lectures where  TID='" + teacherID + "' and Course='" + course + "' and Year='" + year + "' and Sem='" + sem + "' and  Subject='" + subject + "' and Date='" + date + "' ", con);

                    DataSet ds = new DataSet();

                    sda.Fill(ds, "T_Lectures");

                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                }
            }
        }
    }
    }
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
    public partial class Teacher : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridShow();
        }

        protected void Button1_Click(object sender, EventArgs e)//insert
        {
            SqlConnection con2 = new SqlConnection(str);
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Teacher where TUserID='" + TextBox3.Text.ToString() + "' ", con2);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "Entered EmailID is already existing.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string Fname = TextBox2.Text;
                string Lname = TextBox4.Text;
                string FullName = Fname + ""+Lname;
                Console.WriteLine(FullName);
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Teacher(TName,TUserID,TPassword) values(@1,@2,@3)", con);
                cmd.Parameters.AddWithValue("@1", FullName);
                cmd.Parameters.AddWithValue("@2", TextBox3.Text);
                cmd.Parameters.AddWithValue("@3", TextBox1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Successfully Added";
                Label1.ForeColor = System.Drawing.Color.Green;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox1.Text = "";
                TextBox4.Text = "";
            }
        }

        private void GridShow()
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select TName as Name,TUserID as EmailID from Teacher", con);
            con.Open();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}
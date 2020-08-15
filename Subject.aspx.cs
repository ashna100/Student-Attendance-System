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
    public partial class Subject : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridShow();
                ShowSubject();
            }
        }
        private void GridShow()
        {
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("Select * from Course", conn);
            conn.Open();
            DropDownList1.DataSource = cmd.ExecuteReader();
            DropDownList1.DataTextField = "CourseName";
            DropDownList1.DataValueField = "CID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Course");
            conn.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (int.Parse(DropDownList2.SelectedValue) > 0)
            {
                DataTable statedt = new DataTable();
                statedt.Columns.Add("SemId", typeof(int));
                statedt.Columns.Add("SemName");

                if (DropDownList2.SelectedValue == "1")
                {
                    statedt.Rows.Add(1, "Sem I");
                    statedt.Rows.Add(2, "Sem II");
                }

                if (DropDownList2.SelectedValue == "2")
                {
                    statedt.Rows.Add(3, "Sem III");
                    statedt.Rows.Add(4, "Sem IV");
                }
                if (DropDownList2.SelectedValue == "3")
                {
                    statedt.Rows.Add(5, "Sem V");
                    statedt.Rows.Add(6, "Sem VI");
                }

                DropDownList3.DataSource = statedt;
                DropDownList3.DataTextField = "SemName";
                DropDownList3.DataValueField = "SemId";
                DropDownList3.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(str);
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Subject where CourseName='" + DropDownList1.SelectedItem.Text + "' " +
                "and Year='" + DropDownList2.SelectedItem.Text + "' and Sem='" + DropDownList3.SelectedItem.Text + "' and SubjectName='" 
                + TextBox1.Text.ToString() + "' ", con2);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "The Subject " + TextBox1.Text.ToString() + " is already present for the selected Course=" + DropDownList1.SelectedItem.Text + ", Year=" + DropDownList2.SelectedItem.Text + " and Semester=" + DropDownList3.SelectedItem.Text + ".";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SqlConnection con = new SqlConnection(str);
                SqlDataAdapter sda = new SqlDataAdapter("select CID from Course where CourseName='" + DropDownList1.SelectedItem.Text + "'", con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Cousre");
                string cousreId = ds.Tables[0].Rows[0]["CID"].ToString();
                SqlConnection con1 = new SqlConnection(str);
                con1.Open();
                SqlCommand cmd = new SqlCommand("insert into Subject(CID,CourseName,Year,SubjectName,Sem) values (@1,@2,@3,@4,@5)", con1);
                cmd.Parameters.AddWithValue("@1", cousreId);
                cmd.Parameters.AddWithValue("@2", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@3", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@4", TextBox1.Text);
                cmd.Parameters.AddWithValue("@5", DropDownList3.SelectedItem.Text);
                cmd.ExecuteNonQuery();
                con1.Close();
               
                Label1.Text = "Subject added successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
                clear();
            }
        }
        private void clear()
        {
            DropDownList1.SelectedValue = "Select Course";
            //DropDownList2.SelectedValue = "Select Year";
            //DropDownList3.SelectedValue = "Select Semester";
            TextBox1.Text = "";
        }

        private void ShowSubject()
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select CourseName as Course,Year,Sem as Semester,SubjectName as Subject from Subject", con);
            con.Open();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}
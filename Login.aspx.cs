using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;

namespace Attendance_System_Online
{
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
            //GoogleConnect.ClientId = "";
            //GoogleConnect.ClientSecret = "";
            //GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            //if (!String.IsNullOrEmpty(Request.QueryString["code"]))
            //{
            //    string code = Request.QueryString["code"];
            //    String json = GoogleConnect.Fetch("me", code);
            //}
            //if (Request.QueryString["error"] == "Access_Denied")
            //{
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "Altert", "Alert('Access Denied.')", true);
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)//admin/teacher login
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Teacher where TUserID='" + TextBox1.Text + "' and TPassword='" + TextBox2.Text + "'", con);
                    
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (TextBox1.Text == "Admin" & TextBox2.Text == "123")
            {
                Response.Redirect("Admin_Home.aspx");
            }
            else if (dt.Rows.Count == 1)
            {
                Session["TeacherID"] = dt.Rows[0][0].ToString();
                Session["TeacherName"] = dt.Rows[0][1].ToString();
                Session["TUserId"] = TextBox1.Text;
                Response.Redirect("Teacher_Home.aspx");
                //RequiredFieldValidator1.Visible = true;
                //RequiredFieldValidator2.Visible = true;

            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Login Failed...";
            }
        }

        protected void StudentLogin_Click(object sender, ImageClickEventArgs e)//student login with gmail
        {
            //your client id  
            string clientid = "963345948425-8un9oi0s8nsj87pakkhoij4daigstfv0.apps.googleusercontent.com";
            //your client secret  
            string clientsecret = "5oOUAFRM5TbkRqT3iadY8Aw4";
            string redirection_url = "http://localhost:61491/Student_Home.aspx";
            string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(url);
            //GoogleConnect.Authorize("profile", "email");
            
            RequiredFieldValidator1.Visible = false;
            RequiredFieldValidator2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)// student login with credentials
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Student where Email='" + TextBox3.Text + "' and SPassword='" + TextBox4.Text + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count == 1)
            {
                Session["StudentID"] = dt.Rows[0][0].ToString();
                Session["StudentName"] = dt.Rows[0][1].ToString();
                Session["SEmail"] = TextBox1.Text;
                Response.Redirect("Student_Home.aspx");
                RequiredFieldValidator1.Visible = true;
                RequiredFieldValidator2.Visible = true;

            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Login Failed...";
            }

        }
    }
}
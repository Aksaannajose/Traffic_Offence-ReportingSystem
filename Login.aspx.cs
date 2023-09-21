using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



namespace Traffic_offence_reporting_system
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;
        string Usertype;

        conctn obj = new conctn();

       // public static string User;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegistration.aspx");
         
            Response.Redirect("TrafficPoliceRegistration.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          //  User = uname.Text;
            Session["user"] = uname.Text;
            sql = "select Usertype from Login where Username='" + uname.Text + "' and Password='" + pswd.Text + "'";
            rdr = obj.getdata(sql);

            if (rdr.Read())
            {
                Usertype = rdr.GetString(0);
                if (Usertype == "Admin")
                {
                    Session["usertype"] = Usertype;
                    Response.Redirect("AdminHome.aspx");

                }
                else if (Usertype == "User")
                {
                    Session["usertype"] = Usertype;
                    Response.Redirect("UserHome.aspx");

                }
                else if (Usertype == "TrafficPolice")
                {
                    Session["usertype"] = Usertype;
                    Response.Redirect("TrafficPoliceHome.aspx");

                }
                else
                {
                    Label1.Text = "Invalid Username or Password";
                }
            }
            else
            {
                Label1.Text = "Invalid Username or Password";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }
    }
}
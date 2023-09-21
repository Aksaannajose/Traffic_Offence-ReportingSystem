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
    public partial class UserRequest : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;
        string Usertype;

        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Session["user"] = uname.Text;

            sql = "insert into UserRequest values('" + problem.Text + "','" + solution.Text + "','" + rcity.Text + "','" + rstation.Text + "','"+ Session["user"].ToString() + "','pending')";
            obj.insupdel(sql);

            Response.Write("<script>alert('Request Submitted Sucessfully')</script>");
       
        
        }
    }
}



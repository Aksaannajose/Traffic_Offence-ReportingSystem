using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traffic_offence_reporting_system
{
    public partial class UserHome : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        SqlDataAdapter adp;

        string sql;



        conctn obj = new conctn();




        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfileView.aspx");


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserReport.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRequest.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfileEdit.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserViewTraffcRule.aspx");

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alert.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("compose.aspx");
        }
    }
}
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
    public partial class AdminHome : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        SqlDataReader rdr;
        DataSet ds;
        string sql;
        string Usertype;



        conctn obj = new conctn();



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUsers.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTrafficPolice.aspx");


        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDelete.aspx");

        }
    }
}
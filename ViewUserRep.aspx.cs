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
    public partial class ViewUserRep : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        SqlDataAdapter adp;
        string sql;
        DataSet ds;



        conctn obj = new conctn();





        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                UserReport();

            }

        }

        private void UserReport()
        {
            sql = "select * from UserReport";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {


            Response.Redirect("ViewUserReport.aspx");


        }
    }
}
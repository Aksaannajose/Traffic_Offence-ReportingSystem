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
    public partial class send : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                display();
            }

        }
        private void display()
        {

            string usermail = Session["user"] + "@tors.com";
            sql = "select date,to_id,content from mail where from_id='" + usermail + "'";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }

}
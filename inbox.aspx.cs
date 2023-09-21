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
    public partial class inbox : System.Web.UI.Page
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
            sql = "select date,from_id,content from mail where to_id='" + usermail + "' and mail_status='pending'";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string up = GridView1.SelectedDataKey.Value.ToString();
            sql = "update mail set mail_status='read' where from_id='" + up + "' ";
            obj.insupdel(sql);
            display();

        }
    }
}
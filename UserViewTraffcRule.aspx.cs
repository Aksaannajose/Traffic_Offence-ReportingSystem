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
    public partial class UserViewTraffcRule : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        SqlDataReader rdr;
        DataSet ds;

        string sql;
       

        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Trafficrule();

            }
            
        }

        private void Trafficrule()
        {
            sql = "select * from TrafficRule";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }




    }
}
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
    public partial class AddTrafficRules : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        SqlDataReader rdr;
        DataSet ds;
        string sql;
        string imagename;

        conctn obj = new conctn();





        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql = "insert into TrafficRule values('" + TextBox1.Text + "')";
            obj.insupdel(sql);

            Response.Write("<script>alert('Rules added sucessfully!!!')</script>");

        }
    }

}
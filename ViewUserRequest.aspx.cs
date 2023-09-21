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
    public partial class ViewUserRequest : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;
     

        conctn obj = new conctn();

      



        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "select * from UserRequest";
            rdr = obj.getdata(sql);

            if(rdr.Read())
            {
                problem.Text = rdr.GetString(1);
                solution.Text = rdr.GetString(2);
                rcity.Text = rdr.GetString(3);
                rstation.Text = rdr.GetString(4);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql = "update UserRequest set Status='Accepted' where Username = '"+Session["user"].ToString() +"' ";
            obj.insupdel(sql);


            sql = "update UserRequest set Status='Rejected' where Username = '" + Session["user"].ToString() + "' ";
            obj.insupdel(sql);


        }
    }
}
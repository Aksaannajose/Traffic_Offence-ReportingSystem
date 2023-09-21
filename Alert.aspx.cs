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
    public partial class Alert : System.Web.UI.Page
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

        protected void Button1(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Warning!', 'You are danger place.!!', 'warning')", true);
        }

        protected void Button2(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Error!', 'You are not obey traffic rule always!Stay alert!!', 'error')", true);
        }

        protected void Button3(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Information!', 'You are not handle vehicle documents.Stay alert!!', 'info')", true);
        }
    }
}
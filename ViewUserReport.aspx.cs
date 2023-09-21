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
    public partial class ViewUserResponse : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;


        conctn obj = new conctn();



        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "select * from UserReport";
            rdr = obj.getdata(sql);

            if(rdr.Read())

            {
                //  date.Text = rdr.GetString(1);


                DateTime dateValue = rdr.GetDateTime(1); // Retrieve the date as DateTime
                                                            // Now you can display the dateValue on your webpage
                date.Text = dateValue.ToString("yyyy-MM-dd"); // Adjust the format as needed

                complaint.Text = rdr.GetString(2);
                offencecategory.Text = rdr.GetString(3);
                vmodel.Text = rdr.GetString(4);
                nplate.Text = rdr.GetString(5);
                vtype.Text = rdr.GetString(6);
                Image1.ImageUrl = rdr.GetString(7);
                location.Text = rdr.GetString(8);
                Image2.ImageUrl = rdr.GetString(9);
               




            }


        }
    }
}
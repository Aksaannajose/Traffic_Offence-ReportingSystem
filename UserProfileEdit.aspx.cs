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
    public partial class UserProfileEdit : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;


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
            

            sql = "select Name,Address,City,State,Contact_num,Email,Image from UserRegistrationtbl where Username='"+ Session["user"].ToString()+"'";


            rdr = obj.getdata(sql);

            if (rdr.Read())
            {
                lname.Text = rdr.GetString(0);
                taddress.Text = rdr.GetString(1);
                tcity.Text = rdr.GetString(2);
                tstate.Text = rdr.GetString(3);
                tcontact.Text = rdr.GetString(4);
                temail.Text = rdr.GetString(5);
                uimage.ImageUrl =  rdr.GetString(6);

            }
            rdr.Close();

          

            

        }
          



        protected void Button1_Click(object sender, EventArgs e)
        {


            sql = "update UserRegistrationtbl set Address='" + taddress.Text+ "',City='" + tcity.Text+ "',State='" + tstate.Text + "',Contact_num='" + tcontact.Text + "',Email='" + temail.Text + "' where Username='"+ Session["user"].ToString()+"'";
            obj.insupdel(sql);

            Response.Write("<script>alert('Profile Edit Sucessfully')</script>");


        }
    }

}
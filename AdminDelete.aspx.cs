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
    public partial class AdminDelete : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        SqlDataReader rdr;
        
        string sql;

        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {
            display();
            displ();
        }

        private void display()
        {
            DropDownList1.Items.Clear();
            sql = "select Username from UserRegistrationtbl";
            rdr = obj.getdata(sql);

            while (rdr.Read())
            {
                DropDownList1.Items.Add(rdr.GetString(0));


            }
            rdr.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList1.SelectedItem.ToString() != null)
                {
                    sql = "delete from UserRegistrationtbl where Username='" + DropDownList1.SelectedItem.ToString() + "'";
                    obj.insupdel(sql);

                    sql = "delete from Login where Username='" + DropDownList1.SelectedItem.ToString() + "'";
                    obj.insupdel(sql);

                    Response.Write("<script>alert('Deleted')</script>");





                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        private void displ()
        {
            DropDownList2.Items.Clear();
            sql = "select Username from TrafficPoliceRegistration";
            rdr = obj.getdata(sql);

            while (rdr.Read())
            {
                DropDownList2.Items.Add(rdr.GetString(0));


            }
            rdr.Close();


        }









        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList2.SelectedItem.ToString() != null)
                {
                    sql = "delete from TrafficPoliceRegistration where Username='" + DropDownList2.SelectedItem.ToString() + "'";
                    obj.insupdel(sql);

                    sql = "delete from Login where Username='" + DropDownList2.SelectedItem.ToString() + "'";
                    obj.insupdel(sql);

                    Response.Write("<script>alert('Deleted')</script>");





                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }



        }
    }
}
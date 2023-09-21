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
    public partial class ViewTrafficPolice : System.Web.UI.Page
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
            
             TrafficPolice();

            

        }

        private void TrafficPolice()
        {
            sql = "select Rid,Station_name,Station_address,Station_city,Station_state,Station_contact,Station_email from TrafficPoliceRegistration";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {

            string Rid = GridView1.DataKeys[e.RowIndex].Value.ToString();

            string Station_name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;

            string Station_address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;

            string Station_city = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;

            string Station_state = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;

            string Station_contact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            string Station_email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;



            string sql = "update TrafficPoliceRegistration set Station_name='" + Station_name + "',Station_address='" + Station_address + "',Station_city='" + Station_city + "',Station_state= '" + Station_state + "',Station_contact='" + Station_contact + "',Station_email='" + Station_email + "' where Rid = '" + Rid + "'";
            obj.insupdel(sql);

            Response.Write("<script>alert('Updated Sucessfully !!!')</script");

            GridView1.EditIndex = -1;

        }



        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            TrafficPolice();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            TrafficPolice();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

           
        }


       
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;


            string Rid = GridView1.DataKeys[rowindex].Value.ToString();


            string sql = "delete from Login where Username='" + Rid + "' ";
            obj.insupdel(sql);

            sql = "delete from TrafficPoliceRegistration where  Rid='" + Rid + "' ";
            obj.insupdel(sql);

            TrafficPolice();



        }
    }
}
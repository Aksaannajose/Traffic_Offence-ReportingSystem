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
    public partial class TrafficRules : System.Web.UI.Page
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
            if(!IsPostBack)
            {
                TrafficRule();

            }
        }

        private void TrafficRule()
        {
            sql = "select * from TrafficRule";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Ruleid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string Rules = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;

           

            string sql = "update TrafficRule set Rules='" + Rules + "' where Ruleid = '" + Ruleid + "'";
            obj.insupdel(sql);

            Response.Write("<script>alert('Rules Updated!!!')</script");

            GridView1.EditIndex = -1;




        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            TrafficRule();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            TrafficRule();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;


            string Ruleid = GridView1.DataKeys[rowindex].Value.ToString();


           // string sql = "delete from Login where Username='" + Userid + "' ";
           // obj.insupdel(sql);

            sql = "delete from TrafficRule where  Ruleid ='" + Ruleid + "' ";

            obj.insupdel(sql);

            TrafficRule();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
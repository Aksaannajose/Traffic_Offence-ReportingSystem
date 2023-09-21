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
    public partial class ViewUserReq : System.Web.UI.Page
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
            if(!IsPostBack)
            {
                UserRequest();

            }

        }
        private void UserRequest()
        {
            sql = "select Requestid,Current_problem,Ideas_solution,City,Near_station,Status from UserRequest where Status='pending'";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            Session["id"]= Convert.ToInt32(GridView1.SelectedDataKey.Value).ToString();
            
            
            sql = "update UserRequest set Status='Accepted' where Requestid = '" + Session["id"].ToString() + "' ";
            obj.insupdel(sql);
            UserRequest();

            //sql = "update UserRequest set Status='Rejected' where Requestid= '" + Session["id"].ToString() + "' ";
            //obj.insupdel(sql);


           //  Response.Redirect("ViewUserRequest.aspx");


        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {  
           //string id=Convert.ToInt32(GridView1.SelectedDataKey.Value).ToString();
           //   Session["id"] = id;

           // sql = "update UserRequest set Status='Accepted' where Requestid = '" + Session[id].ToString() +"' ";
           // obj.insupdel(sql);


           // sql = "update UserRequest set Status='Rejected' where Requestid= '" + Session[id].ToString() +"' ";
           // obj.insupdel(sql);



        }
    }
}
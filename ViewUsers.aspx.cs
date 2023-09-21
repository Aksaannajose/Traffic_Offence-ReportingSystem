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
    public partial class ViewUsers : System.Web.UI.Page
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

            if (!IsPostBack)
                Userdetails();

        }
       private void Userdetails()
        {
            sql = "select Userid,Name,Address,City,State,Contact_num,Gender,Email,Image from UserRegistrationtbl";
            ds = obj.gridview(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            




        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Userid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string Name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;

            string Address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;

            string City = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;

            string State = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            string Contact_num = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;

            string Gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;

           // string Male = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            
            string Email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

            string sql = "update UserRegistrationtbl set Name='" + Name + "',Address='" + Address + "',City='" + City + "',State= '" + State+ "',Contact_num='" + Contact_num + "',Gender='" + Gender + "',Email='" + Email + "'where Userid = '"+Userid+"'";
            obj.insupdel(sql);

            Response.Write("<script>alert('Data Updated!!!')</script");

            GridView1.EditIndex = -1;





        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Userdetails();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Userdetails();

        }

        protected void ldelete_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;


            string Userid = GridView1.DataKeys[rowindex].Value.ToString();


            string sql = "delete from Login where Username='" + Userid +"' ";
            obj.insupdel(sql);

            sql = "delete from UserRegistrationtbl where  Userid='"+ Userid + "' ";
            obj.insupdel(sql);

            Userdetails();






        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;





namespace Traffic_offence_reporting_system
{
    public partial class compose : System.Web.UI.Page
    {

        //SqlConnection con;
        
        SqlDataReader rdr;
      

        string sql;
        string t;
        string dt;
        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {
            select();
            selectto();

        }

        private void selectto()
        {
            sql = "select mailid from allmail where username='" + Session["user"] + "'";
            rdr = obj.getdata(sql);
            if (rdr.Read())
            {
                lblfrom.Text = rdr.GetString(0);



            }
        }
        private void select()
        {

            int i = 0;
            if (Session["usertype"].ToString() == "TrafficPolice")
            {
                sql = " select mailid from allmail where usertype='User'";
                rdr = obj.getdata(sql);
                while (rdr.Read())
                {
                    string temp = rdr.GetString(i).ToString();
                    DropDownList1.Items.Add(temp.ToString());

                }
                rdr.Close();



            }

            //else if (Session["Usertype"].ToString() == "TrafficPolice")
            //{
            //    sql = "select mailid from allmail where usertype='Offender'";
            //    rdr = con.getdata(sql);
            //    while (rdr.Read())
            //    {
            //        string temp = rdr.GetString(i).ToString();
            //        DropDownList1.Items.Add(temp.ToString());
            //    }
            //    rdr.Close();
            //}




            else if (Session["Usertype"].ToString() == "Admin")
            {
                sql = "select mailid from allmail where usertype='User'";
                rdr = obj.getdata(sql);
                while (rdr.Read())
                {
                    string temp = rdr.GetString(i).ToString();
                    DropDownList1.Items.Add(temp.ToString());
                }
                rdr.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            dt = System.DateTime.Now.ToString("yyyy-MM-dd");
            sql = "insert into mail values('" + lblfrom.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + txtsub.Text + "','" + txtcon.Text + "','" + dt + "','pending')";
            obj.insupdel(sql);
            Response.Write("Mail send successfully");



        }



    }
}

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
    public partial class UserProfileView : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;
        string Usertype;

        conctn obj = new conctn();






        protected void Page_Load(object sender, EventArgs e)
        {

            sql = "select * from UserRegistrationtbl where Username ='"+ Session["user"].ToString()+"'";
            rdr = obj.getdata(sql);

            if (rdr.Read())
            {
               
                nlabel.Text = rdr.GetString(1);
                alabel.Text = rdr.GetString(2);
                clabel.Text = rdr.GetString(3);
                slabel.Text = rdr.GetString(4);
                glabel.Text = rdr.GetString(5);
                cnlabel.Text = rdr.GetString(6);
                elabel.Text = rdr.GetString(7);
                ulabel.Text = rdr.GetString(9);
                Image1.ImageUrl = rdr.GetString(8);



            }

            rdr.Close();



        }


        //private void Upload_Image()
        //{
        //    string path = Server.MapPath("~/images/");

        //    if (FileUpload1.HasFile)
        //    {
        //        string extension = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower());

        //        if (extension == ".jpg" || extension == ".webp" || extension == ".jpeg" || extension == ".png")
        //        {
        //            string fname = FileUpload1.FileName;
        //            FileUpload1.SaveAs(path + FileUpload1.FileName);

        //        }


        //    }
        //}
    }
}


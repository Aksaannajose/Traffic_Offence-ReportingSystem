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
    
    public partial class UserReport : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;
        string Usertype;
        string imagename;
        string imagename1;

        string fname;


        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Offence_category();
                Vehicle_Type();
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Upload_Image();
            Location_Image();


            
            sql = "insert into UserReport values('"+ date.Text +"','"+complaint.Text+"','"+offencecategory.SelectedItem.ToString() +"','"+vmodel.Text+"','"+nplate.Text+"','"+ vehicletype.SelectedItem.ToString() +"','" +imagename+"','"+location.Text+"','"+imagename1 + "')";
            obj.insupdel(sql);

            Response.Write("<script>alert('Complaint Submitted Sucessfully')</script>");

        }

        private void Upload_Image()
        {
           string path = Server.MapPath("~/images/");

            if (FileUpload1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower());

            if(extension ==".jpg"  ||  extension == ".webp" || extension ==".jpeg" || extension ==".png")
                {
                    string fname = FileUpload1.FileName;
                    imagename = "~/images/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(path + FileUpload1.FileName);

                }


            }

        }

        private void Location_Image()
        {
            string path = Server.MapPath("~/images/");

            if (FileUpload2.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload2.FileName.ToLower());

                if (extension == ".jpg" || extension == ".webp" || extension == ".jpeg" || extension == ".png")
                {
                    string fname = FileUpload2.FileName;
                    imagename1 = "~/images/" + FileUpload2.FileName;
                    FileUpload2.SaveAs(path + FileUpload2.FileName);

                }


            }
        }

        private void Offence_category()
        {
            offencecategory.Items.Clear();
            sql = "select Category_name from OffenceCategory";
            rdr = obj.getdata(sql);

            while (rdr.Read())
            {
                offencecategory.Items.Add(rdr.GetString(0));

            }
            rdr.Close();

        }

        private void Vehicle_Type()
        {
            vehicletype.Items.Clear();
            sql = "select Vehicle_Name from VehicleType";
            rdr = obj.getdata(sql);

            while (rdr.Read())
            {
                vehicletype.Items.Add(rdr.GetString(0));

            }
            rdr.Close();
        }


    }
}
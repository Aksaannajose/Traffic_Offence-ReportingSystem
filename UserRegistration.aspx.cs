using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.AccessControl;
using System.Reflection.Emit;

namespace Traffic_offence_reporting_system
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        SqlDataReader rdr;

        string sql;
        string Gender;
        string imagename;


        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                State();


            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            
            sql = "insert into Login values('" + uname.Text + "','" + pswd.Text + "','User')";
            obj.insupdel(sql);
            Response.Write("Sucessfully logged");

            
            
            if (Male.Checked)

                Gender = "Male";
            else if (Female.Checked)
                Gender = "Female";
            Image();


            sql = "insert into UserRegistrationtbl values('" + name.Text + "','" + address.Text + "','" + city.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + contact.Text + "','" + Gender + "','" + email.Text + "','" + imagename + "','" + uname.Text + "')";
            obj.insupdel(sql);

            sql ="insert into allmail values('"+email.Text +"','User','"+ uname.Text +"')";
            obj.insupdel(sql);




            Response.Write("<script>alert('Inserted')</script>");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");


        }
        private void State()
        {
            DropDownList1.Items.Clear();
            sql = "select State_Name from State";
            rdr = obj.getdata(sql);

            while (rdr.Read())
            {
                DropDownList1.Items.Add(rdr.GetString(0));

            }
            rdr.Close();

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("");

        }

        private void Image()
        {
            string path = Server.MapPath("~/images/");

            if (FileUp1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUp1.FileName.ToLower());

                if (extension == ".jpg" || extension == ".webp" || extension == ".jpeg" || extension == ".png")
                {
                    string fname = FileUp1.FileName;
                    imagename = "~/images/" + fname;

                    FileUp1.SaveAs(path + FileUp1.FileName);

                }

            }
        }


        private void checkuser()
        {
            int temp = 0;
            sql = "select Username from Login where Username='" + uname.Text + "'";

            rdr = obj.getdata(sql);

            if (rdr.Read())
            {
                Label2.Text = "Username already exist";

            }
            else
            {
                temp = 1;


                Response.Write("Not Registered");
            }



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            checkuser();

        }
    }
}

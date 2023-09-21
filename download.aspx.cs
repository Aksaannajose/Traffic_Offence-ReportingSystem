using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
using System.EnterpriseServices;

namespace Traffic_offence_reporting_system
{
    public partial class download : System.Web.UI.Page
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
            // Your data source, e.g., a DataTable from your database
            DataTable data = GetDataFromDatabase();

            if (!IsPostBack)
            {
                // Bind the data to a GridView or other control to display it on the page
                sql = "select * from Payments";
                ds = obj.gridview(sql);
                

                GridView1.DataSource = data;
                GridView1.DataBind();
            }

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            sql = "select * from Payments";

            // Your data source, e.g., a DataTable from your database
            DataTable data = GetDataFromDatabase();

            // Create a CSV file
            StringBuilder csv = new StringBuilder();
            foreach (DataRow row in data.Rows)
            {
                for (int i = 0; i < data.Columns.Count; i++)
                {
                    csv.Append(row[i]);
                    if (i < data.Columns.Count - 1)
                    {
                        csv.Append(",");
                    }
                }
                csv.AppendLine();

            }

            // Set the response headers to force download
            Response.Clear();
            Response.ContentType = "text/csv";
            Response.AddHeader("Content-Disposition", "attachment;filename=data.csv");
            Response.ContentEncoding = Encoding.UTF8;

            // Write the CSV data to the response output stream
            Response.Write(csv.ToString());
            Response.End();


        }
        private DataTable GetDataFromDatabase()
        {
            // Example: Fetch data from your database and return it as a DataTable
            // Replace this with your actual database connection and query
            DataTable data = new DataTable();
            // Your database connection code here
            // Your SQL query here
            // Example: SqlDataAdapter.Fill(data);
            return data;
        }
    }
}
            


    

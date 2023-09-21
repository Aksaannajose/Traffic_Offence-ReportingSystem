using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;




namespace Traffic_offence_reporting_system
{
    public partial class Payment : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        string sql;
    

        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {





        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            sql = "INSERT INTO Payments values('" + txtName.Text + "','" + txtCardNumber.Text + "','" + txtExpirationDate.Text + "','" + txtAmount.Text + "')";
            obj.insupdel(sql);

            // Retrieve payment information from the form
            string name = txtName.Text;
                string cardNumber = txtCardNumber.Text;
                string expirationDate = txtExpirationDate.Text;
                decimal amount = decimal.Parse(txtAmount.Text);

                // Perform payment processing (you can simulate this here)
                bool paymentSuccessful = ProcessPayment(name, cardNumber, expirationDate, amount);

                // Display a message to the user
                if (paymentSuccessful)
                {
                    // Payment successful
                    Response.Write("<script>alert('Payment Successful!!!')</script>");
                }
                else
                {
                    // Payment failed
                    Response.Write("Payment failed. Please try again.");
                }
        }

            private bool ProcessPayment(string name, string cardNumber, string expirationDate, decimal amount)
            {
                // In a real application, you would integrate with a payment gateway here.
                // For simplicity, we'll assume payment is always successful.
               return true;


            // Insert payment data into the database
            //using (SqlConnection conn = new SqlConnection("YourConnectionStringHere"))

            //conn.Open();
             sql = "INSERT INTO Payments ('"+txtName.Text+"','"+txtCardNumber.Text+"','"+txtExpirationDate.Text+"','"+txtAmount.Text+"')";
            obj.insupdel(sql);


            //using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
            //{
            //    cmd.Parameters.AddWithValue("@Name", name);
            //    cmd.Parameters.AddWithValue("@CardNumber", cardNumber);
            //    cmd.Parameters.AddWithValue("@ExpirationDate", expirationDate);
            //    cmd.Parameters.AddWithValue("@Amount", amount);
            //    int rowsAffected = cmd.ExecuteNonQuery();
            //    return rowsAffected > 0;
            //}
            }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("download.aspx");
        }
    }
}
    

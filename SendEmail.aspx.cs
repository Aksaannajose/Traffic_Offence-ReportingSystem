using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;





namespace Traffic_offence_reporting_system
{
    public partial class SendEmail : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        SqlDataReader rdr;

        string sql;


        conctn obj = new conctn();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                NetworkCredential loginInfo;
                SmtpClient client;
                MailMessage mailMsg;

                loginInfo = new NetworkCredential(tFrom.Text, tPassword.Text);

                client = new SmtpClient(tsmtp.Text);
                client.Port = Convert.ToInt32(tport.Text);
                client.EnableSsl = true;
                client.Credentials = loginInfo;

                mailMsg = new MailMessage();
                mailMsg.From = new MailAddress(tFrom.Text, "aksaannajose");

                mailMsg.To.Add(new MailAddress(tTo.Text));

                if (!string.IsNullOrEmpty(tCC.Text))
                    mailMsg.To.Add(new MailAddress(tCC.Text));


                mailMsg.Subject = tSubject.Text;

                mailMsg.Body = tMessage.Text;

                mailMsg.BodyEncoding = System.Text.Encoding.UTF8;

                mailMsg.IsBodyHtml = true;

                mailMsg.Priority = MailPriority.Normal;

                mailMsg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                client.Send(mailMsg);

                lMsg.Text = "Your Email has been Sent Sucessfully";





            }
             catch(Exception ex)
            { 
                lMsg.Text = "Exception: " + ex.Message;

            }

        }
    }
}
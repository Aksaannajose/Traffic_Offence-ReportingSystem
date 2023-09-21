using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Traffic_offence_reporting_system
{
    public partial class TrafficPoliceHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUserReq.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUserRep.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrafficRules.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alert.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("compose.aspx");
        }

        //protected void LinkButton7_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("inbox.aspx");
        //}

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("send.aspx");
        }

        protected void LinkButton7_Click1(object sender, EventArgs e)
        {
            Response.Redirect("inbox.aspx");
        }
    }
}
using System;
using System.Web.UI;

namespace projectbelfield
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Txtuser.Text = "Welcome to Belfield-" + Session["user"].ToString();
            }
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("~/loginaccount/login.aspx");
            Response.Write("<script>alert('Logout Successful')</script");
        }
    }
}
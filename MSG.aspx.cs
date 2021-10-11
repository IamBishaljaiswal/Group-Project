using System;

namespace projectbelfield
{
    public partial class MSG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = (string)Application["message"];
            txtmsg.Text = msg;
        }
    }
}
using System;

namespace projectbelfield
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Payment Successfull.')</script");
        }
    }
}
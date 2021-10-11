using System;
using System.Data.SqlClient;

namespace projectbelfield.loginaccount
{
    public partial class Reset : System.Web.UI.Page
    {
        private readonly string Username = SendCode.to;

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button2reset_Click(object sender, EventArgs e)
        {
            if (TxtResetPass.Text == TxtResetPassVerify.Text)
            {
                /*UPDATE [dbo].[login]
   SET  = <UserName, nvarchar(50),>
      ,[password] = <password, nchar(10),>
 WHERE <Search Conditions,,>*/
                SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("UPDATE [dbo].[login] SET [password] = '" + TxtResetPassVerify.Text + "' WHERE [UserName] = '" + Username + "' ", con);
                con.Open();
                cmd.ExecuteNonQuery();



                Response.Redirect("~/loginaccount/login.aspx");
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('The new Password does not match. Enter same password.')</script");
            }
        }
    }
}
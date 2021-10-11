using System;
using System.Data;
using System.Data.SqlClient;

namespace projectbelfield.loginaccount
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                //Response.Redirect("~/Default.aspx");
            }
        }

        protected void Button1login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
            con.Open();
            try
            {
                //con.Open();
                //SqlCommand cmd = new SqlCommand("select count(*) from login where username='" + txtuser.Text + "' and password='" + txtpass.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter("SELECT [UserName] ,[password] FROM[dbo].[login] where UserName='" + Txtuser.Text + "' and password='" + Txtpass.Text + "'", con);
                DataTable dt = new DataTable();

                sda.Fill(dt);

                {
                    if (dt.Rows.Count == 1)
                    {
                        Session["user"] = Txtuser.Text;



                        Response.Redirect("~/Default.aspx");
                        Response.Write("<script>alert('User Login Successfull')</script");
                    }

                    else
                    {

                        Response.Write("<script>alert('Invalid username or password')</script");
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }
    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace projectbelfield.loginaccount
{
    public partial class SendCode : System.Web.UI.Page
    {
        string randomCode;
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void SendMessage()
        {

            string from, pass, messageBody;
            Random rand = new Random();
            randomCode = (rand.Next(999999)).ToString();
            // insert randomcode into PasswordReset table
            HttpCookie cookie = new HttpCookie("RandomCode", randomCode);
            Response.SetCookie(cookie);

            MailMessage message = new MailMessage();
            to = TxtEmail.Text.ToString();

            from = "belfieldservicecenter@gmail.com";
            pass = "Belfield6710";

            messageBody = "Your reset code is " + randomCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "password resetting code";
            message.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com")
            {
                EnableSsl = true,
                Port = 587,
                //Port = 465,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(from, pass)
            };
            try
            {
                smtp.Send(message);
                Response.Write("<script>alert('Code Send Successfully')</script");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }





        protected void send_Click1(object sender, EventArgs e)
        {
            //if condition to check if entered username is in our DB or not
            SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
            con.Open();
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("select * from login where Username='" + TxtEmail.Text + "'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                {

                    if (dt.Rows.Count == 1)
                    {
                        Session["user"] = TxtEmail.Text;

                        SendMessage();

                    }

                    else
                    {
                        Response.Write("<script>alert('This Email is not registered')</script");

                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }



        protected void verify_Click(object sender, EventArgs e)
        {
            //to check get the value from PasswordReset table
            string checkCode = Request.Cookies["RandomCode"].Value;

            if (checkCode == (TxtVerify.Text).ToString())
            {
                to = TxtEmail.Text;
                Reset rp = new Reset();
                //this.Hide();
                //rp.Show();

                Response.Redirect("Reset.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Code')</script");
            }
        }
    }
}
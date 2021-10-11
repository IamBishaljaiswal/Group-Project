using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectbelfield.registerpage
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string from, pass, to;

            MailMessage mm = new MailMessage();
            to = txtEmail.Text.ToString();

            from = "belfieldservicecenter@gmail.com";
            pass = "Belfield6710";

            //mm.Subject = txtSubject.Text;
            mm.Body = txtBody.Text;
            if (fuAttachment.HasFile)
            {
                string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
            }
            mm.IsBodyHtml = false;
            mm.From = new MailAddress(from);
            mm.To.Add(to);

            //SmtpClient smtp = new SmtpClient();
            SmtpClient smtp = new SmtpClient("smtp.gmail.com")
            {
                EnableSsl = true,
                Port = 587,
                //Port = 465,
                //DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = true,
                Credentials = new NetworkCredential(from, pass)
            };

            smtp.Send(mm);
            Response.Write("<script>alert('Email Send Successfully')</script");

        }
    }
    }

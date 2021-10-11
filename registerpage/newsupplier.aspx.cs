using System;
using System.Data;
using System.Data.SqlClient;
namespace projectbelfield.registerpage
{
    public partial class newsupplier : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");

        public void fetchsupplier()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from supplier", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "ss");
            //GridView2.DataSource = ds.Tables["ss"];
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.Validate();
            //if (Page.IsValid == true)
            //Response.Write("Page is Valid!");
            //else
            //    Response.Write("Page is not Valid!");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "INSERT INTO [dbo].[supplier]([contact_name],[last_name],[company_name] ,[Email],[Address],[contact_no]) VALUES('" + textcontactname.Text + "','" + Textlastname.Text + "','" + Textcompany.Text + "','" + Textsupemail.Text + "','" + Textaddress.Text + "','" + Textsupcontact.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            textcontactname.Text = "";
            Textlastname.Text = "";
            Textcompany.Text = "";
            Textsupemail.Text = "";
            Textaddress.Text = "";
            Textsupcontact.Text = "";
            fetchsupplier();
            Response.Write("<script>alert('supplier Record Saved successfully!')</script");

        }

        protected void Button2update_Click(object sender, EventArgs e)
        {
            /*UPDATE [dbo].[supplier] SET [contact_name] = '" + textcontactname.Text + "' , [last_name] = '" + textcontactname.Text + "', [company_name] = '" + textcontactname.Text + "', [Email] = '" + textcontactname.Text + "', [Address] = '" + textcontactname.Text+ "', [contact_no] = '" + textcontactname.Text + "' WHERE supp_id='" + supidText + "'*/
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "UPDATE [dbo].[supplier] SET [contact_name] = '" + textcontactname.Text + "' , [last_name] = '" + Textlastname.Text + "', [company_name] = '" + Textcompany.Text + "', [Email] = '" + Textsupemail.Text + "', [Address] = '" + Textaddress.Text + "', [contact_no] = '" + Textsupcontact.Text + "' WHERE supp_id='" + supid.Text + "'";

            cmd.ExecuteNonQuery();
            con.Close();
            supid.Text = "";
            textcontactname.Text = "";
            Textlastname.Text = "";
            Textcompany.Text = "";
            Textsupemail.Text = "";
            Textaddress.Text = "";
            Textsupcontact.Text = "";
            fetchsupplier();
            Response.Write("<script>alert('supplier Record Updated successfully!')</script");
        }

        protected void Button1delete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "DELETE FROM [dbo].[supplier] WHERE supp_id ='" + supid.Text + "'";

            cmd.ExecuteNonQuery();
            con.Close();
            supid.Text = "";
            textcontactname.Text = "";
            Textlastname.Text = "";
            Textcompany.Text = "";
            Textsupemail.Text = "";
            Textaddress.Text = "";
            Textsupcontact.Text = "";
            fetchsupplier();
            Response.Write("<script>alert('supplier Record Deleted successfully')</script");
        }

        protected void Button2exit_Click(object sender, EventArgs e)
        {

        }
    }
}

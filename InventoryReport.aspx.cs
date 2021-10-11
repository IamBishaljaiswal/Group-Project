using System;
using System.Data;
using System.Data.SqlClient;
using System.Numerics;

namespace projectbelfield
{
    public partial class InventoryReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void fetchsupplier()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [inventory1] ", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "ss");
            //GridView1.DataSource = ds.Tables["ss"];
            GridView2.DataBind();
            con.Close();
        }

       
        

        protected void Button1save_Click(object sender, EventArgs e)
        {
           con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            BigInteger total = BigInteger.Parse(DropDownList1poqty.SelectedValue) + BigInteger.Parse(TextBox4newqtq.Text);
            cmd.CommandText = "INSERT INTO [dbo].[inventory1] ([product_id],[product_name],[po_qty],[updt_qty],[total_qty])VALUES('" + DropDownList2pID.SelectedValue + "','" + DropDownList3pname.SelectedValue+ "','" + DropDownList1poqty.SelectedValue + "','" + TextBox4newqtq.Text + "' , '" + total + "')";
            cmd.ExecuteNonQuery();
            con.Close();          
            fetchsupplier();
            Response.Write("<script>alert('Inventory Quantity Added  successfully!')</script");
        }

        protected void Button2update_Click(object sender, EventArgs e)
        {
            
            
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            BigInteger total = BigInteger.Parse(DropDownList1poqty.SelectedValue) - BigInteger.Parse(TextBox4newqtq.Text);
           
            cmd.CommandText = "UPDATE [dbo].[inventory1] SET [po_qty]'" + DropDownList1poqty.SelectedValue + "',[updt_qty]'" + TextBox4newqtq.Text + "',[total_qty]'" + total + "' where [product_name]'" + DropDownList3pname.SelectedValue + "' ";
            cmd.ExecuteNonQuery();
            con.Close();



            fetchsupplier();
            Response.Write("<script>alert('Inventory Quantity Deduct successfully!')</script");
            fetchsupplier();
        }

        
    }
}
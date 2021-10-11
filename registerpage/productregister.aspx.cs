using System;
using System.Data;
using System.Data.SqlClient;

namespace projectbelfield.registerpage
{
    public partial class productregister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
        public void fetchProduct()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from product", con);
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*INSERT INTO [dbo].[product]([product_name],[product_mpn],[product_upc],[product_unit_cost],[supp_id])*/

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "INSERT INTO [dbo].[product]([product_name],[product_mpn],[product_upc],[product_unit_cost],[supp_id]) VALUES('" + TextBoxpname.Text + "','" + TextBoxmpn.Text + "','" + TextBoxupc.Text + "','" + TextBoxunitcost.Text + "','" + DropDownsuppid.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            TextBoxmpn.Text = "";
            TextBoxpname.Text = "";
            TextBoxunitcost.Text = "";
            Textprodidbox.Text = "";
            TextBoxupc.Text = "";

            fetchProduct();
            Response.Write("<script>alert('product added successfully!')</script");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            /*UPDATE [dbo].[product] SET [product_name] = 
             * <'" + TextBoxpname.Text + "', nvarchar(50),> ,[product_mpn] = <'" + TextBoxmpn.Text + "', 
             * nchar(18),> ,[product_upc] = <'" + TextBoxupc.Text + "', nchar(18),> 
             * ,[product_unit_cost] = <'" + TextBoxunitcost.Text + "', numeric(18,0),>
             * ,[supp_id] = <"+ DropDownsuppid.SelectedValue + ", int,> 
             * WHERE <Search Conditions,,> = '" + TextBoxmpn.Text + "',
             * [product_upc] = '" + TextBoxupc.Text + "' , [product_unit_cost]
             * = '" + TextBoxunitcost.Text + "', [supp_id] = '" + 
             * DropDownsuppid.SelectedValue + "' WHERE[ Product_id] = 
             * '" + Textprodidbox.Text + "' ";
*/
            //SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = " UPDATE[dbo].[product] SET [product_name] = '" + TextBoxpname.Text + "' ,[product_mpn] = "+ TextBoxmpn.Text + ",[product_upc] = " + TextBoxupc.Text + " , [product_unit_cost] = '" + TextBoxunitcost.Text + "'  WHERE [supp_id] = "+ DropDownsuppid.SelectedValue + " ";
            //cmd.CommandText = "UPDATE [dbo].[product] SET [product_name] = <'" + TextBoxpname.Text + "', nvarchar(50),> ,[product_mpn] = '" + TextBoxmpn.Text + "', [product_upc] = '" + TextBoxupc.Text + "', [product_unit_cost] = '" + TextBoxunitcost.Text + "' , WHERE [ Product_id] = <'" + Textprodidbox.Text + "', int,> ";

            cmd.CommandText = "UPDATE[dbo].[product] SET[product_name] = '" + TextBoxpname.Text + "',[product_mpn] = '" + TextBoxmpn.Text + "', [product_upc] = '" + TextBoxupc.Text + "', [product_unit_cost] = '" + TextBoxunitcost.Text + "' WHERE [Product_id] =  '" + Textprodidbox.Text + "' ";
            cmd.ExecuteNonQuery();
            con.Close();

            TextBoxmpn.Text = "";
            TextBoxpname.Text = "";
            TextBoxunitcost.Text = "";

            TextBoxupc.Text = "";
            fetchProduct();

            Response.Write("<script>alert('product Updated successfully!')</script");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM [dbo].[product] WHERE [Product_id] =  '" + Textprodidbox.Text + "' ";

            cmd.ExecuteNonQuery();
            con.Close();
            fetchProduct();
            Response.Write("<script>alert('product Deleted successfully!')</script");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}
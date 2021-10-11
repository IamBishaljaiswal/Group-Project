using System;
using System.Data.SqlClient;



namespace projectbelfield
{
    public partial class purchaseorder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            /*SELECT [prchas_order_no]
      ,[supp_id]
      ,[product_id]
      ,[product_name]
      ,[shipment]
      ,[address]
      ,[product_unit_cost]
      ,[quantity]
      ,[total]
  FROM [dbo].[purchase_order]
*/
        }


    }
}
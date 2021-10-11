using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Numerics;
using System.Text;
using System.Web;
using System.Web.UI;

namespace projectbelfield.registerpage
{
    public partial class purchaseregister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BISHALJAISWAL\SQLEXPRESS;Initial Catalog=Belfield;Integrated Security=True");
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)

        {
            fetchPurchaseOrder();
        }

        public void fetchPurchaseOrder()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from purchase_order", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "ss");
            //GridView2.DataSource = ds.Tables["ss"];
            GridView2.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            Textboxdateofshipmmet.Text = DateTime.Now.ToLongDateString();
            BigInteger total = BigInteger.Parse(Dropunitcost.SelectedValue) * BigInteger.Parse(TextBoxqty.Text);
            cmd.CommandText = "INSERT INTO [dbo].[purchase_order]([supp_id],[product_id] ,[product_name],[shipment],[address],[product_unit_cost],[quantity],[total]) VALUES ('" + Dropsupplierid.SelectedValue + "','" + Dropproductid.SelectedValue + "','" + Dropproductname.SelectedValue + "','" + Textboxdateofshipmmet.Text + "','"+TextBox1deliveryaddress.Text+"' ,'" + BigInteger.Parse(Dropunitcost.SelectedValue) + "','" + BigInteger.Parse(TextBoxqty.Text) + "','" + total + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            fetchPurchaseOrder();
            Response.Write("<script>alert('Purchase order Created successfully!')</script");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        public void fetchorder()
        {
            con.Open();
            int orderNo = Int32.Parse(DropDownList2.SelectedValue.ToString());

            SqlCommand cmd = new SqlCommand("select * from purchase_order where prchas_order_no= " + orderNo + " ", con);
            cmd.CommandType = CommandType.Text;
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // this will query your database and return the result to your datatable
            da.Fill(dt);

            con.Close();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            fetchorder();
            string companyName = "Belfield Service Center";
            int orderNo = Int32.Parse(DropDownList2.SelectedValue.ToString());
            /*DataTable dtable = new DataTable();
            dtable.Columns.AddRange(new DataColumn[8] {
                            // new DataColumn("Purchase_No", typeof(string)),
                             new DataColumn("Supplier", typeof(string)),
                             new DataColumn("ProductID", typeof(string)),
                             new DataColumn("Name", typeof(string)),
                             new DataColumn("Shipment", typeof(string)),
                             new DataColumn("Address", typeof(string)),
                             new DataColumn("UNit costt", typeof(int)),

                             new DataColumn("Quantity", typeof(int)),
                             new DataColumn("Total", typeof(int))});*/


            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Order Sheet</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Order No: </b>");
                    sb.Append(orderNo);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                    sb.Append(companyName);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#fff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'>Total</td>");
                    sb.Append("<td>");
                    sb.Append(dt.Compute("sum(Total)", ""));
                    sb.Append("</td>");
                    sb.Append("</tr></table>");

                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + orderNo + ".pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                    /* string companyName = "Belfield Service Center";
                     int orderNo = Int32.Parse(DropDownList2.SelectedValue.ToString());
                     DataTable dt = new DataTable();
                     dt.Columns.AddRange(new DataColumn[5] {
                                      //new DataColumn("supplier_id", typeof(string)),
                                      new DataColumn("product_id", typeof(string)),
                                      new DataColumn("product_name", typeof(string)),
                                      new DataColumn("product_unit_cost", typeof(int)),
                                      new DataColumn("quantity", typeof(int)),
                                      new DataColumn("total", typeof(int))});

                     dt.Rows.Add("SELECT [prchas_order_no] ,[supp_id] ,[product_id] ,[product_name] ,[product_unit_cost] ,[quantity] ,[total] FROM [dbo].[purchase_order]");

                     using (StringWriter sw = new StringWriter())
                     {
                         using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                         {
                             StringBuilder sb = new StringBuilder();

                             //Generate Invoice (Bill) Header.
                             sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                             sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Order Sheet</b></td></tr>");
                             sb.Append("<tr><td colspan = '2'></td></tr>");
                             sb.Append("<tr><td><b>Order No: </b>");
                             sb.Append(orderNo);
                             sb.Append("</td><td align = 'right'><b>Date: </b>");
                             sb.Append(DateTime.Now);
                             sb.Append(" </td></tr>");
                             sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                             sb.Append(companyName);
                             sb.Append("</td></tr>");
                             sb.Append("</table>");
                             sb.Append("<br />");

                             //Generate Invoice (Bill) Items Grid.
                             sb.Append("<table border = '1'>");
                             sb.Append("<tr>");
                             foreach (DataColumn column in dt.Columns)
                             {
                                 sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                                 sb.Append(column.ColumnName);
                                 sb.Append("</th>");
                             }
                             sb.Append("</tr>");
                             foreach (DataRow row in dt.Rows)
                             {
                                 sb.Append("<tr>");
                                 foreach (DataColumn column in dt.Columns)
                                 {
                                     sb.Append("<td>");
                                     sb.Append(row[column]);
                                     sb.Append("</td>");
                                 }
                                 sb.Append("</tr>");
                             }
                             sb.Append("<tr><td align = 'right' colspan = '");
                             sb.Append(dt.Columns.Count - 1);
                             sb.Append("'>Total</td>");
                             sb.Append("<td>");
                             sb.Append(dt.Compute("sum(Total)", ""));
                             sb.Append("</td>");
                             sb.Append("</tr></table>");

                             //Export HTML String as PDF.
                             StringReader sr = new StringReader(sb.ToString());
                             Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                             HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                             PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                             pdfDoc.Open();
                             htmlparser.Parse(sr);
                             pdfDoc.Close();
                             Response.ContentType = "application/pdf";
                             Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + orderNo + ".pdf");
                             Response.Cache.SetCacheability(HttpCacheability.NoCache);
                             Response.Write(pdfDoc);
                             Response.End();*/


                }
            }
        }







        /*UPDATE [dbo].[purchase_order]
   SET [supp_id] = <supp_id, int,>
      ,[product_id] = <product_id, int,>
      ,[product_name] = <product_name, nvarchar(50),>
      ,[shipment] = <shipment, date,>
      ,[address] = <address, nvarchar(50),>
      ,[product_unit_cost] = <product_unit_cost, numeric(18,0),>
      ,[quantity] = <quantity, numeric(18,0),>
 WHERE <Search Conditions,,>*/

        /*pdf:
             Response.ClearContent();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=MyPdfFile.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter strWrite = new StringWriter();
            HtmlTextWriter htmWrite = new HtmlTextWriter(strWrite);
            HtmlForm frm = new HtmlForm();
            GridView2.Parent.Controls.Add(frm);
            frm.Attributes["runat"] = "server";
            frm.Controls.Add(GridView2);
            frm.RenderControl(htmWrite);
            StringReader sr = new StringReader(strWrite.ToString());
            Document pdfDoc = new Document(PageSize.A4, 8f, 8f, 8f, 2f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.Flush();
            Response.End();*/
    }
}
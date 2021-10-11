<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purchaseorder.aspx.cs" Inherits="projectbelfield.purchaseorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title><%: Page.Title %> - Belfield Service Centre</title>

    <style type="text/css">
        .newvndr{
            margin-bottom:75px;
            margin-top:54px;
            margin-left:0px;
            margin-right:230px;
           box-shadow: 0 5px 10px -6px black;/*one side edge*/
        }
        .textbtn:hover {
            box-shadow: 0 10px 20px -6px black; /*one side edge*/
        }
        .buttonright{
            float:right;

        }
        .bodyform{
            height:700px;
        }
        </style>
    <br />
    <body>
        <div class="buttonright">
        <asp:Button ID="Button2" runat="server" BackColor="#0066FF" BorderColor="#0066FF" BorderStyle="Ridge" CssClass="textbtn" ForeColor="White" Height="33px" PostBackUrl="~/registerpage/purchaseregister.aspx" Text="+ CREATE PURCHASE ORDER" Width="235px" />
          
    </div>
      <div class="newvndr" runat="server" >
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="prchas_order_no" DataSourceID="SqlDataSource1" Width="940px">
              <Columns>
                  <asp:BoundField DataField="prchas_order_no" HeaderText="#Purchase Order No" InsertVisible="False" ReadOnly="True" SortExpression="prchas_order_no" />
                  <asp:BoundField DataField="supp_id" HeaderText="Supplier ID" SortExpression="supp_id" />
                  <asp:BoundField DataField="product_id" HeaderText="Product ID" SortExpression="product_id" />
                  <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" />
                  <asp:BoundField DataField="shipment" HeaderText="Order Date" SortExpression="shipment" />
                  <asp:BoundField DataField="address" SortExpression="address" HeaderText="Delivery Address" />
                  <asp:BoundField DataField="product_unit_cost" HeaderText="Product Unit Cost" SortExpression="product_unit_cost" />
                  <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                  <asp:BoundField DataField="total" HeaderText="Total Order Amount" SortExpression="total" />
              </Columns>
              <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
              <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
              <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
              <RowStyle BackColor="White" ForeColor="#003399" />
              <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
              <SortedAscendingCellStyle BackColor="#EDF6F6" />
              <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
              <SortedDescendingCellStyle BackColor="#D6DFDF" />
              <SortedDescendingHeaderStyle BackColor="#002876" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [purchase_order]"></asp:SqlDataSource>
      </div>  
       </body>
</asp:Content>

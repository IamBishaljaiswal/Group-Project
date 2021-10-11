<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="projectbelfield.Products" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <title><%: Page.Title %> - Belfield Service Centre</title>

    <style type="text/css">
        .newvndr{
            margin-bottom:0px;
            margin-top:53px;
            margin-left:0px;
           box-shadow: 0 5px 10px -6px black;/*one side edge*/
        }
        .textbtn:hover {
            box-shadow: 0 10px 20px -6px black; /*one side edge*/
        }
        .data{
            margin-left:420px;
            margin-top:-190px;
             

         }
        .buttonright{
            float:right;
        }
        
    </style>
    <br />
    <div class="buttonright">
        <asp:Button ID="Button2" runat="server" BackColor="#0066FF" BorderColor="#0066FF" BorderStyle="Ridge" CssClass="textbtn" ForeColor="White" Height="33px" PostBackUrl="~/registerpage/productregister.aspx" Text="+ INSERT NEW PRODUCT" Width="200px" />
          
    </div>
    
        <asp:GridView ID="GridView1" CssClass="newvndr" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:HyperLinkField HeaderText="Create purchase order" NavigateUrl="~/purchaseorder.aspx" Text="click here.." />
                <asp:BoundField DataField="supp_id" HeaderText="Supplier ID" SortExpression="supp_id" />
                <asp:BoundField DataField="product_id" HeaderText="#Product ID" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" />
                <asp:BoundField DataField="product_mpn" HeaderText="#Manufacturing Product No" SortExpression="product_mpn" />
                <asp:BoundField DataField="product_upc" HeaderText="#Universal Product Code" SortExpression="product_upc" />
                <asp:BoundField DataField="product_unit_cost" HeaderText="Product Unit Cost" SortExpression="product_unit_cost" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
       
   




</asp:Content>


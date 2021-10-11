<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="supplier.aspx.cs" Inherits="projectbelfield.Vendors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title><%: Page.Title %>  Belfield Service Centre</title>
    <style type="text/css">
        .newvendor{
            margin-bottom:0px;
            margin-top:50px;
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
                      <asp:Button ID="Button2" runat="server" Text="+ CREATE NEW SUPPLIER"   OnClick="Button1_Click" Width="200px" BackColor="#0066FF" BorderColor="#0066FF" BorderStyle="Ridge" ForeColor="White" Height="33px" CssClass="textbtn" PostBackUrl="~/registerpage/newsupplier.aspx"   />
              
    </div>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" CssClass="newvendor"  DataKeyNames="supp_id">
                  <Columns>
                      <asp:HyperLinkField HeaderText="Create Product Here" NavigateUrl="~/Products.aspx" Text="Click here..." />
                      <asp:BoundField DataField="supp_id" HeaderText="#Supplier ID" InsertVisible="False" ReadOnly="True" SortExpression="supp_id" />
                      <asp:BoundField DataField="contact_name" HeaderText="Supplier Name" SortExpression="contact_name" />
                      <asp:BoundField DataField="last_name" HeaderText="Supplier Last Name" SortExpression="last_name" />
                      <asp:BoundField DataField="company_name" HeaderText="Comapany Name" SortExpression="company_name" />
                      <asp:BoundField DataField="Email" HeaderText="Supplier Email Address" SortExpression="Email" />
                      <asp:BoundField DataField="Address" HeaderText="Supplier Address" SortExpression="Address" />
                      <asp:BoundField DataField="contact_no" HeaderText="Supplier Contact No" SortExpression="contact_no" />
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
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [supplier]"></asp:SqlDataSource>
         
    

      
</asp:Content>

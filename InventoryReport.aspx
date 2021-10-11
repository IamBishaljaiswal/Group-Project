<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryReport.aspx.cs" Inherits="projectbelfield.InventoryReport" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title><%: Page.Title %> - Belfield Service Centre </title>
    <style type="text/css">
       .divleft{ width:434px;
            background-color:rgba(0, 0, 0, 0.10);
            margin-left:10px;
            float:left;
            padding-left:30px;
            padding-right:20px;
            height:auto;
            margin-top:20px;

        }
        .divleft:hover {
            box-shadow: 0 10px 20px -1px black;}/*one side edge*/
        .divright{
            width:500px;
            height:auto;
            background-color:rgba(0, 0, 0, 0);
            padding-top:20px;
            float:right;
           margin-right:150px;
           padding-left:0px;
        }
        .divright:hover {
            box-shadow: 0 10px 20px -1px black;}/*one side edge*/
 .h1{
            color: #fb0505;
            width: 408px;
            font-family: 'Times New Roman';
            animation: blinker-two 1.4s linear infinite;
       }
        @keyframes blinker-two {  
      100% { opacity: 0; }
      }
    </style>

    <script>
        function validateExit() {
            confirm("Are you sure to EXIT?");
        }

    </script>
    <div class="divleft">
        <h3 class="h1">Inventory Here</h3>&nbsp;&nbsp;<br />
     Product ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2pID" runat="server" DataSourceID="SqlDataSource3" DataTextField="product_id" DataValueField="product_id" Height="27px" Width="127px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_id] FROM [purchase_order] ORDER BY [product_id] DESC"></asp:SqlDataSource>
     <br />
     <br />
     Product Name:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3pname" runat="server" DataSourceID="SqlDataSource4" DataTextField="product_name" DataValueField="product_name" Height="27px" Width="127px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_name] FROM [purchase_order] ORDER BY [product_name]"></asp:SqlDataSource>
        <br />
        <br />
        P.O Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1poqty" runat="server" DataSourceID="SqlDataSource2" DataTextField="quantity" DataValueField="quantity" Height="27px" Width="127px">
        </asp:DropDownList>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [total_qty] FROM [inventory1]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [quantity] FROM [purchase_order] ORDER BY [quantity]"></asp:SqlDataSource>
     <br />
     <br />
        Update Quantity:&nbsp;
     <asp:TextBox ID="TextBox4newqtq" runat="server" Height="27px" Width="125px"></asp:TextBox>
     



        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4newqtq" ErrorMessage="Quantity Required**" ForeColor="Red"></asp:RequiredFieldValidator>
     



     <br />
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button1save" runat="server" BackColor="Green" BorderColor="White" BorderWidth="2px" ForeColor="White" Height="35px" Text="Add" Width="75px" OnClick="Button1save_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button2update" runat="server" BackColor="SkyBlue" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Height="35px" Text="Deduct" Width="75px" OnClick="Button2update_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button4exit" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Height="35px" Text="Exit" Width="70px"  PostBackUrl="~/Default.aspx" CausesValidation="False" OnClientClick="validateExit()" />
        <br />
     <br />


    </div>
    <div class="divright">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="24px" Width="488px" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="Product ID" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" />
                <asp:BoundField DataField="po_qty" HeaderText="Purchase Order Quantity" SortExpression="po_qty" />
                <asp:BoundField DataField="updt_qty" HeaderText="Update Quantity" SortExpression="updt_qty" />
                <asp:BoundField DataField="total_qty" HeaderText="Total Quantity" SortExpression="total_qty" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [inventory1]"></asp:SqlDataSource>

        <br />

    </div>
</asp:Content>

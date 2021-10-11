<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchaseregister.aspx.cs" Inherits="projectbelfield.registerpage.purchaseregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            padding:0px;
            margin:0px;
        }
        .bodyform{
            width:1250px;
            color:black;
            height: 697px;
            margin-right: 0px;
            padding-top:40px;
        }
        .auto-style1 {
            width:444px;
            background-color:rgba(0, 0, 0, 0.10);
            margin-left:15px;
            float:left;
            padding-left:10px;
            padding-right:10px;
            height:auto;

        }
        .auto-style1:hover{
            border-radius:10px;
            box-shadow: 0 10px 20px -1px black;/*one side edge*/}
        .auto-style-right{
            width:585px;
            height:auto;
            background-color:rgba(0, 0, 0, 0);
            padding-top:20px;
            float:right;
           margin-right:150px;
           padding-left:0px;
           
        }
        /*.auto-style-right:hover{box-shadow: 0 10px 20px -1px black;}/*one side edge*/
        .auto-boxnbtn:hover {
            box-shadow: 0 10px 20px -1px black; /*one side edge*/
        }
        .data{
             margin-left:315px;
             margin-top:-220px;

         }
        .footer {
        
    }
    .address{
        margin-left:0px;
        
               
       
    }
    .map {
         margin-left:260px;
        margin-top:-130px;
        
        
    }
    .footerright {
        float: right;
        margin-right:50px;
        margin-top: -130px;
    }
    .auto-style {
            color: #fb0505;
            width: 408px;
            animation: blinker-two 1.4s linear infinite;
        }
        @keyframes blinker-two {  
      100% { opacity: 0; }
      }
        
        .auto-boxnbtn {}
        .auto-style2 {}
        .auto-style3 {
            width: 1250px;
            color: black;
            height: 834px;
            margin-right: 0px;
            padding-top: 40px;
        }
        </style>
     <script>
        function validateDel() {
            if (confirm("The item will be deleted forever!.Are you sure want to continue?") == true) {
                return true;
            }
            
                return false;
            
            
        }
        
        
        function validateExit() {
            confirm("Are you sure to EXIT?");
        }
        function validateupdate() {
            confirm("Are you sure want to Save the change?");
        }
     </script>
    
</head>
<body>
    <div class="header" runat="server" style="background: linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%); font-family: 'Arial Black'; font-size: 18px; font-weight: normal; font-style: normal; font-variant: normal;" >

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       Belfield Service Center
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to
        Purchase Registration page
    </div>
    <form id="form1" class="auto-style3" runat="server">
    <div class="auto-style1">
       <br />
        <h2 class="auto-style">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Purchase Order Here.</h2>&nbsp;<br />
        Supplier ID:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="Dropsupplierid" runat="server" DataSourceID="SqlDataSource2" DataTextField="supp_id" DataValueField="supp_id" Height="27px" Width="127px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [supp_id] FROM [product] ORDER BY [supp_id] DESC"></asp:SqlDataSource>
        <br />
        <br />
        Product Name:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="Dropproductname" runat="server" DataSourceID="SqlDataSource3" DataTextField="product_name" DataValueField="product_name" CssClass="auto-boxnbtn" Height="27px" Width="125px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_name] FROM [product] ORDER BY [product_name]"></asp:SqlDataSource>
        <br />
        <br />
        Product Id:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:DropDownList ID="Dropproductid" runat="server" DataSourceID="SqlDataSource4" DataTextField="product_id" DataValueField="product_id" CssClass="auto-boxnbtn" Height="27px" Width="127px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_id] FROM [product] ORDER BY [product_id] DESC"></asp:SqlDataSource>
        <br />
        <br />
        Quantity:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxqty" placeholder="Quantity" runat="server" CssClass="auto-boxnbtn" Width="120px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxqty" ErrorMessage="Field Required**" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Product unit cost:-&nbsp; <asp:DropDownList ID="Dropunitcost" runat="server" DataSourceID="SqlDataSource5" DataTextField="product_unit_cost" DataValueField="product_unit_cost" CssClass="auto-boxnbtn" Height="27px" Width="127px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_unit_cost] FROM [product] ORDER BY [product_unit_cost] DESC"></asp:SqlDataSource>
        <br />
&nbsp;<br />
        Delivery Address:- <asp:TextBox ID="TextBox1deliveryaddress" runat="server" Height="22px" TextMode="MultiLine" Width="120px"></asp:TextBox>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [Address] FROM [supplier] ORDER BY [Address] DESC"></asp:SqlDataSource>
        <br />
        <br />
        Order
        Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="Textboxdateofshipmmet" placeholder="eg:12/15/2020" runat="server" Height="22px" Width="120px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textboxdateofshipmmet" ErrorMessage="Field Required**" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Total Price :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Total" DataValueField="Total" CssClass="auto-boxnbtn" Height="27px" Width="127px">
        </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT product_unit_cost, quantity FROM purchase_order"></asp:SqlDataSource>
        <br />
        <br />
        &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADD ORDER" BackColor="Green" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Height="35px" Width="93px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-boxnbtn" ForeColor="White" Height="35px" Text="CHECKOUT" Width="90px" CausesValidation="False" PostBackUrl="~/payment.aspx" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="SkyBlue" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-boxnbtn" ForeColor="White" Height="35px" Text="EMAIL" Width="90px" CausesValidation="False" OnClick="Button3_Click" PostBackUrl="~/registerpage/Email.aspx" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="**EXIT**" PostBackUrl="~/purchaseorder.aspx" BackColor="Red" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-boxnbtn" ForeColor="White" Height="35px" Width="90px" CausesValidation="False" OnClientClick="validateExit()" />
        <br />
        <br />
    </div>
         <br />
        <div class="auto-style-right">
            <asp:GridView ID="GridView2" cssclass="auto-boxnbtn" runat="server" AutoGenerateColumns="False" DataKeyNames="prchas_order_no" DataSourceID="SqlDataSource9" BackColor="White" BorderColor="#3366CC" >
                <Columns>
                    <asp:BoundField DataField="prchas_order_no" HeaderText="#Purchase Order No" InsertVisible="False" ReadOnly="True" SortExpression="prchas_order_no" />
                    <asp:BoundField DataField="supp_id" HeaderText="Supplier ID" SortExpression="supp_id" />
                    <asp:BoundField DataField="product_id" HeaderText="Product ID" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="Product ID" SortExpression="product_name" />
                    <asp:BoundField DataField="shipment" HeaderText="Order Date" SortExpression="shipment" />
                    <asp:BoundField DataField="address" HeaderText="Delivery Address" SortExpression="address" />
                    <asp:BoundField DataField="product_unit_cost" HeaderText="Product Unit Cost" SortExpression="product_unit_cost" />
                    <asp:BoundField DataField="quantity" HeaderText="Order Qantity" SortExpression="quantity" />
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
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [purchase_order]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [prchas_order_no]
      ,[supp_id]
      ,[product_id]
      ,[product_name]
      ,[shipment]
      ,[address]
,[product_unit_cost]
,[quantity]
      ,([product_unit_cost]* [quantity]) As Total
  FROM [dbo].[purchase_order]


"></asp:SqlDataSource>
            <br />
            Do you wish to print an Purchase order <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">INVOICE</asp:LinkButton>
            ?
            <br />
&nbsp;Please select PO No:&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource8" DataTextField="prchas_order_no" DataValueField="prchas_order_no" Height="27px" Width="128px" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [prchas_order_no] FROM [purchase_order] ORDER BY [prchas_order_no] DESC"></asp:SqlDataSource>
            </div>
        
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />     
          
        
    </form>

    <div class="footer" style="background:linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%);">
            
               <div class="address">
                <br />
                   <p>&nbsp;&copy; By-Belfeild Service Centre </p>
                <p ><span  >4 Carter St, Belfield NSW 2191, Australia</span></p>
                <p ><span  >(02) 9642 2335</span></p>
                   
                </div>
                  <div class="map">
                  
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13245.058266590551!2d151.07648036984108!3d-33.908589785768946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12bbae2a4b1aa3%3A0x982a6dfcbbb5314f!2s4%20Carter%20St%2C%20Belfield%20NSW%202191!5e0!3m2!1sen!2sau!4v1589257194563!5m2!1sen!2sau" " style="border-radius:10px;"  aria-hidden="false" tabindex="0" class="auto-style2"></iframe>
         
            </div>
            <div class="footerright">
                <h3>Follow us On :</h3>
                Facebook
               <br /> Twitter
               <br /> Youtube
            </div>
        </div>
</body>
</html>

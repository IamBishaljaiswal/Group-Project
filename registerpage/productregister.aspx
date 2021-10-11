<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productregister.aspx.cs" Inherits="projectbelfield.registerpage.productregister" %>

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
            height: 626px;
            margin-right: 0px;
            padding-top:40px;
        }
        .auto-style1 {
            width:530px;
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
           margin-right:90px;
           padding-left:10px;
           
        }
        /*.auto-style-right:hover{box-shadow: 0 10px 20px -1px black;}/*one side edge*/
                
        .footer {
        
    }
         .data{
             margin-left:500px;
             margin-top:-100px;

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
        .auto-boxnbtn:hover {
            box-shadow: 0 10px 20px -1px black; /*one side edge*/
        }
        .auto-style {
            color: #fb0505;
            width: 408px;
            animation: blinker-two 1.4s linear infinite;
        }
        @keyframes blinker-two {  
      100% { opacity: 0; }
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
        <div class="header" runat="server" style="background: linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%); font-family: 'Arial Black'; font-size: 18px; font-weight: normal; font-style: normal;" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Belfield Service Center<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to Product Registration Page

        </div>

    <form id="form1"  class="bodyform" runat="server">

        <div class="auto-style1">
            <br /><h2 class="auto-style" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Registration Here.</h2>
            <br />

            <br />
            Supplier ID:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownsuppid" runat="server" CssClass="auto-boxnbtn" Height="27px" Width="79px" DataSourceID="SqlDataSource2" DataTextField="supp_id" DataValueField="supp_id">
            </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [supp_id] FROM [supplier] ORDER BY [supp_id] DESC"></asp:SqlDataSource>

            <br />

            <br />
            Product ID:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

            <asp:TextBox ID="Textprodidbox" runat="server" placeholder="#P.ID Update / Delete" CssClass="auto-boxnbtn" Width="171px" Height="22px"></asp:TextBox>

            <br />

            <br />
            <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxpname" placeholder="product name" runat="server" CssClass="auto-boxnbtn" Width="170px" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxpname" ErrorMessage="Product Name Required.!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="product UPC :-"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxupc" placeholder="product upc number" runat="server" CssClass="auto-boxnbtn" Width="170px" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxupc" ErrorMessage="UPC No Required.!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="product MPN :-"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxmpn" placeholder="product mpn number" runat="server" CssClass="auto-boxnbtn" Width="170px" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxmpn" ErrorMessage="MPN No Required.!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="product unit cost :-"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBoxunitcost" placeholder="product unit cost" runat="server" CssClass="auto-boxnbtn" Width="170px" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxunitcost" ErrorMessage="Unit Cost Required.!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1add" runat="server" Text="ADD" CssClass="auto-boxnbtn" Height="35px" Width="90px" OnClick="Button1_Click" BackColor="Green" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White"  />
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="auto-boxnbtn" Height="35px" Text="UPDATE" Width="90px" CausesValidation="False" OnClick="Button2_Click" BackColor="#3399FF" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" OnClientClick="validateupdate()" />
            &nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-boxnbtn" Height="35px" Text="DELETE" Width="90px" CausesValidation="False" BackColor="#3399FF" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" OnClick="Button3_Click" OnClientClick="validateDel()" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Button ID="Button4" runat="server" Text="**EXIT**" CssClass="auto-boxnbtn" Height="33px" PostBackUrl="~/Products.aspx" CausesValidation="False" BackColor="Red" BorderColor="White" BorderStyle="Solid" ForeColor="White" BorderWidth="2px" Width="90px" OnClientClick="validateExit()" />
            <br />
            <br />
            </div>
        <div class="auto-style-right">
        <asp:GridView ID="GridView1"  runat="server" postback="true" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-boxnbtn" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="supp_id" HeaderText="Supplier Id" SortExpression="supp_id" />
                <asp:BoundField DataField="product_id" HeaderText="#Product Id" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" />
                <asp:BoundField DataField="product_mpn" HeaderText="Product M.P.N" SortExpression="product_mpn" />
                <asp:BoundField DataField="product_upc" HeaderText="ProductU.P.C" SortExpression="product_upc" />
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
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [product] ORDER BY [supp_id] DESC"></asp:SqlDataSource>
            <br />
            <br />
            <br />
           
           







        
    </form>
    <div class="footer" style="background:linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%);">
            
               <div class="address">
                <br />
                   <p>&nbsp;&copy; <%: DateTime.Now.Year %>By-Belfeild Service Centre </p>
                <p><span  >4 Carter St, Belfield NSW 2191, Australia</span></p>
                <p><span  >(02) 9642 2335</span></p>
                   
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


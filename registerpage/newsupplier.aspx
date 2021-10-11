<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsupplier.aspx.cs" Inherits="projectbelfield.registerpage.newsupplier" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>welcome to New Supplier Registration page</title>
    <style type="text/css">
        body{
            padding:0px;
            margin:0px;
        }
        .header{
            
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
        /*.auto-style-right:hover{box-shadow: 0 10px 20px -1px black;/*one side edge}*/
                
        .auto-boxnbtn:hover{
            box-shadow: 0 10px 20px -1px black;/*one side edge*/
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
        .auto-style2 {}
        .auto-boxbtn {
            margin-top: 0px;
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
            if (confirm("The item will be deleted forever.Are you sure want to continue?") == true) {
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
    
        <div class="header" runat="server" style="background: linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%); font-family: 'Arial Black'; font-size: 18px; font-style: normal;" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Belfield Service Center 
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to Supplier Registration page<br />
            
        </div>

    
    <form id="form1" runat="server" class="bodyform">
        
           
            <div class="auto-style1">
                <h2 class="auto-style" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Supplier Register Here.</h2>
                
                Supplier ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="supid" runat ="server" placeholder="#S.ID Update/Delete*" Width="131px" CssClass="auto-boxnbtn" Height="22px"></asp:TextBox>
                <br />
                <br />
                Contact Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="textcontactname" runat="server" placeholder="First Name*" CssClass="auto-boxnbtn" Width="220px" Height="22px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textcontactname" ErrorMessage="please enter display name!" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <br />
                Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="Textlastname" runat="server" Placeholder="Last Name*" CssClass="auto-boxnbtn" Height="22px" width="220px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textlastname" ErrorMessage="last name is empty!" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <br />

                
                Company Name :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Textcompany" runat="server" Height="22px" width="220px" placeholder="Company Name*" CssClass="auto-boxnbtn"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textcompany" ErrorMessage="company name required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                Supplier E-Mail :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Textsupemail" runat="server" Height="22px" width="220px" placeholder="Supplier E-Mail*" CssClass="auto-boxnbtn"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textsupemail" ErrorMessage="enter email address!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textsupemail" ErrorMessage="Invalid e-mail address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="Textaddress" runat="server" placeholder="Enter Address*" CssClass="auto-boxbtn" Width="219px" Height="22px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Textaddress" ErrorMessage="Address Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                Supplier Contact :&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Textsupcontact" runat="server" Width="219px"  placeholder="Mobile* / Work*" Height="22px" CssClass="auto-boxnbtn"></asp:TextBox>

                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Textsupcontact" ErrorMessage="phone number required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textsupcontact" ErrorMessage="phone number should be 10 digit!" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1save" runat="server" Text="SAVE" AutoPostback="True" CssClass="auto-boxnbtn"  OnClick="Button1_Click" BackColor="#009933" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Height="35px" width="90px" />
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3update" runat="server" BackColor="#3399FF" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CssClass="auto-boxnbtn" ForeColor="White" Height="35px" OnClick="Button2update_Click" Text="UPDATE" Width="90px" OnClientClick="validateupdate()" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1delete" runat="server" BackColor="#3399FF" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CssClass="auto-boxnbtn" EnableTheming="True" ForeColor="White" Height="35px" OnClick="Button1delete_Click" Text="DELETE" Width="90px" OnClientClick="validateDel()" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2exit" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CssClass="auto-boxnbtn" Height="35px" PostBackUrl="~/supplier.aspx" Text="**EXIT**" Width="90px" OnClientClick="validateExit()" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
       
           <div class="auto-style-right" runat="server">
            
               <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="supp_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-boxnbtn" PostBack="true"  OnSorted="Page_Load" AllowSorting="True" AllowPaging="True" EnablePersistedSelection="True">
                   <Columns>
<asp:BoundField DataField="supp_id" HeaderText="#Supplier Id" SortExpression="supp_id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                       <asp:BoundField DataField="contact_name" HeaderText="Name" SortExpression="contact_name" />
                       <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                       <asp:BoundField DataField="company_name" HeaderText="Comapny Name" SortExpression="company_name" />
                       <asp:BoundField DataField="Email" HeaderText="E-Mail " SortExpression="Email" />
                       <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                       <asp:TemplateField HeaderText="Phone Number" SortExpression="contact_no">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("contact_no") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("contact_no") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
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
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" DeleteCommand="DELETE FROM [supplier] WHERE [supp_id] = @supp_id" InsertCommand="INSERT INTO [supplier] ([contact_name], [last_name], [company_name], [Email], [Address], [contact_no]) VALUES (@contact_name, @last_name, @company_name, @Email, @Address, @contact_no)" SelectCommand="SELECT * FROM [supplier]" UpdateCommand="UPDATE [supplier] SET [contact_name] = @contact_name, [last_name] = @last_name, [company_name] = @company_name, [Email] = @Email, [Address] = @Address, [contact_no] = @contact_no WHERE [supp_id] = @supp_id">
                   <DeleteParameters>
                       <asp:Parameter Name="supp_id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="contact_name" Type="String" />
                       <asp:Parameter Name="last_name" Type="String" />
                       <asp:Parameter Name="company_name" Type="String" />
                       <asp:Parameter Name="Email" Type="String" />
                       <asp:Parameter Name="Address" Type="String" />
                       <asp:Parameter Name="contact_no" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="contact_name" Type="String" />
                       <asp:Parameter Name="last_name" Type="String" />
                       <asp:Parameter Name="company_name" Type="String" />
                       <asp:Parameter Name="Email" Type="String" />
                       <asp:Parameter Name="Address" Type="String" />
                       <asp:Parameter Name="contact_no" Type="String" />
                       <asp:Parameter Name="supp_id" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <br />
               <br />
        </div>
           
        
    </form>
    <div class="footer" style="background:linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%);">
            
        <div class="address">
            <br />
            <p style="color: #">&nbsp;&copy; <%: DateTime.Now.Year %>By-Belfeild Service Centre </p>
            <p style="color: #"><span>4 Carter St, Belfield NSW 2191, Australia</span></p>
            <p style="color: #"><span>(02) 9642 2335</span></p>

        </div>
                  <div class="map">
                  
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13245.058266590551!2d151.07648036984108!3d-33.908589785768946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12bbae2a4b1aa3%3A0x982a6dfcbbb5314f!2s4%20Carter%20St%2C%20Belfield%20NSW%202191!5e0!3m2!1sen!2sau!4v1589257194563!5m2!1sen!2sau" " style="border-radius:10px;" allowfullscreen="" aria-hidden="false" tabindex="0" class="auto-style2"></iframe>
         
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

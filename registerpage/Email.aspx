<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="projectbelfield.registerpage.Email" %>

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
            margin-left: 400px;
            padding-top: 40px;
        }
        .auto-style4 {
            width: 298px;
        }
        .auto-style5 {
            width: 302px;
        }
        </style>
</head>
<body>
    <div class="header" runat="server" style="background: linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%); font-family: 'Arial Black'; font-size: 18px; font-weight: normal; font-style: normal; font-variant: normal;" >

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       Belfield Service Center
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to E-Mail page<br />
        
    </div>
    <form id="form1" class="auto-style3" runat="server">
        <div class="auto-style1">
            <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            E-Mail To:-</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email Address " CssClass="auto-boxnbtn" Height="22px" TextMode="Email" Width="150px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Field Required**" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
       
    </tr>
    <tr>
        <td align = "top" class="auto-style5">
            Compose Email:
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" placeholder="Type Your Message Here..." Height = "150" Width = "200"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
             Attachment:<br />
        </td>
        <td class="auto-style4">
            <asp:FileUpload ID="fuAttachment" placeholder="AttachFile" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
             &nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Width="75px" BackColor="#009933" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-boxnbtn" ForeColor="White" Height="35px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CssClass="auto-boxnbtn" ForeColor="White" Height="35px" PostBackUrl="~/registerpage/purchaseregister.aspx" Text="Exit" Width="75px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;
        </td>
        <td class="auto-style4">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
        </td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
</table>
        </div>
    </form>
 <div class="footer" style="background:linear-gradient(135deg, #2cb5e8 10%, #ff6a00 61%, rgba(0, 74, 143, 100) 85%);">
            
               <div class="address">
                <br />
                   <p>&nbsp;&copy; By-Belfeild Service Centre y; By-Belfeild Service Centre </p>
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

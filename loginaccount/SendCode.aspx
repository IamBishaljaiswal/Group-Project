<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendCode.aspx.cs" Inherits="projectbelfield.loginaccount.SendCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title><%: Page.Title %>welcome to verify code</title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
         body
        {
            background:url(../loginaccount/belfieldbg.jpg) no-repeat ;
            background-size:1400px 1000px;
      
        }
        .auto-style2 {
            background-color:rgba(0, 0, 0, 0.50);
         
         
           box-shadow: 0 10px 20px -1px #d28251;/*one side edge*/
           
          
          
          
          width: 410px;
            background-position: center center; 
           
            position: absolute;
            left: 300px;
            top: 15px;
            margin-top:200px;
            margin-left:150px;
        }
        .auto-style3 {
            width: 409px;
            background-position: center center;
            
            left: 0px;
            top: 55px;
        }
        .auto-style {
            color: #ffffff;
            width: 408px;
            animation: blinker-two 1.4s linear infinite;
        }
        @keyframes blinker-two {  
      100% { opacity: 0; }
      }
        .auto-style8 {
            width: 361px;
        }
        .auto-loginbtn:hover{
            box-shadow: 0 10px 20px -1px black;/*one side edge*/
        }
        
      
        </style>
    <script>

        function validateverify() {
            alert("Code verified Successfully");
        }
    </script>
</head>
<body>
      <form id="form2" runat="server" class="auto-style2">
        <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </h1>
        <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Belfield Service Center</h1>
          <h3 class="auto-style">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Get Reset Code Via Registered Email</h3>
        <table class="auto-style3" >
            
            <tr>
                <td class="auto-style8"><strong><span class="auto-style1">&nbsp;&nbsp;Enter Email Address:&nbsp; </span></strong><asp:TextBox ID="TxtEmail"  runat="server" placeholder="-Enter Registered Email-" style="color: #990099" Width="190px" Height="23px" CssClass="auto-loginbtn" TextMode="Email"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Registered Email " ForeColor="White" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
                    <strong>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="send" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" CssClass="auto-loginbtn" ForeColor="White" Height="33px"  Text="Send Code" Width="80px" OnClick="send_Click1" />
                    <br />
                    </strong>
                    <br class="auto-style13" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong><span class="auto-style1">&nbsp;Enter Received Code:&nbsp; </span><asp:TextBox ID="TxtVerify"  runat="server" TextMode="Password" placeholder="-Enter Received Code-" style="color: #990099" Width="190px" Height="23px" CssClass="auto-loginbtn"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="verify" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" CssClass="auto-loginbtn" ForeColor="White" Height="33px" Text="Verify Code" Width="80px" OnClick="verify_Click" OnClientClick="validateverify()" />
                    <br />
                    </strong></td>
                
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
               
            </tr>
        </table>
    </form>
    
</body>
</html>

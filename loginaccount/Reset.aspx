<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reset.aspx.cs" Inherits="projectbelfield.loginaccount.Reset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %>welcome to Password Update</title>
</head>
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
           
          
          
          
          width: 432px;
            background-position: center center; 
           
            position: absolute;
            left: 300px;
            top: 15px;
            margin-top:200px;
            margin-left:150px;
        }
        .auto-style3 {
            width: 416px;
            background-position: center center;
            
            left: 0px;
            top: 55px;
        }
        .auto-style4 {
            color: #fff;
            width: 408px;
        }
        .auto-style8 {
            width: 409px;
        }
        .auto-style9 {
            width: 34px;
            height: 33px;
        }
        img.auto-style9
        {
           
            margin-bottom:-10px;
        }
        .auto-loginbtn:hover{
            box-shadow: 0 10px 20px -1px black;/*one side edge*/
        }
        .auto-style {
            color: #ffffff;
            width: 408px;
            animation: blinker-two 1.4s linear infinite;
        }
        @keyframes blinker-two {  
      100% { opacity: 0; }
      }
        </style>
    <script>

        function validatereset() {
            alert("user password updated Successfully");
        }
    </script>
<body>
    <form id="form1" runat="server" class="auto-style2">
        
        <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </h1>
        <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Belfield Service Center</h1>
            <h3 class="auto-style">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update Password </h3>
        <table class="auto-style3" >
            
            <tr>
                <td class="auto-style8"><span class="auto-style13"><strong><span class="auto-style1">&nbsp;&nbsp;<img alt="" class="auto-style9" src="../password.png" />New Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TxtResetPass" runat="server" placeholder="--Enter New Password--" Height="23px" Width="190px" TextMode="Password" CssClass="auto-loginbtn"></asp:TextBox>
                    <br />
                    </span></strong></span><br />
                    <br class="auto-style13" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong><span class="auto-style1"><span class="auto-style13"> 
                    <img alt="" class="auto-style9" src="../password.png" /></span>Confirm New Password: 
            <asp:TextBox ID="TxtResetPassVerify" placeholder="--Confirm New password--" runat="server" Height="23px" Width="190px" TextMode="Password" CssClass="auto-loginbtn"></asp:TextBox>
                    <br />
                    </span><br />
                    </strong></td>
                
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtResetPassVerify" ControlToValidate="TxtResetPass" ErrorMessage="Password Not Matched**" ForeColor="White"></asp:CompareValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="RegBtn" runat="server" CssClass="auto-style10" OnClick="RegBtn_Click" Text="Register" Width="64px" /> --%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2reset" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Text="Reset" Height="33px" Width="75px" OnClick="Button2reset_Click" OnClientClick="validatereset()" CssClass="auto-loginbtn" />
                    <br />
                    </strong>
                </td>
               
            </tr>
        </table>
    </form>
   
</body>
</html>
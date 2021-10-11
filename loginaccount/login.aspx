<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="projectbelfield.loginaccount.login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %>welcome to LogIn</title>
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
            width: 326px;
            background-position: center center;
            
            left: 0px;
            top: 55px;
        }
        .auto-style4 {
            color: #fff;
            width: 408px;
        }
        .auto-style8 {
            width: 361px;
        }
        .auto-style9 {
            width: 48px;
            height: 42px;
        }
        img.auto-style9
        {
           
            margin-bottom:-10px;
        }
        .auto-loginbtn:hover{
            box-shadow: 0 10px 20px -1px black;/*one side edge*/
        }
        </style>
    <script>

        function validatelogin() {
            alert("user login Successfully");
        }
    </script>
</head>

<body >
    <form id="form1" runat="server" class="auto-style2">
        <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </h1>
        <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Belfield Service Center</h1>
        <table class="auto-style3" >
            
            <tr>
                <td class="auto-style8"><span class="auto-style13"><strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <img alt="" class="auto-style9" src="../username.png" />Username: </span></span><asp:TextBox ID="Txtuser"  runat="server" placeholder="--**Enter Username**--" style="color: #990099" Width="190px" Height="25px" CssClass="auto-loginbtn" TextMode="Email"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtuser" ErrorMessage="Please Enter Username**" ForeColor="White" ></asp:RequiredFieldValidator>
                    <br class="auto-style13" />
               </strong> </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <img alt="" class="auto-style9" src="../password.png" />Password:&nbsp; </span><asp:TextBox ID="Txtpass"  runat="server" TextMode="Password" placeholder="--**Enter Password**--" style="color: #990099" Width="190px" Height="25px" CssClass="auto-loginbtn"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtpass" ErrorMessage="Please Enter Password**" ForeColor="White"></asp:RequiredFieldValidator>
                    </strong></td>
                
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="~/loginaccount/SendCode.aspx"> Forget Password?</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="RegBtn" runat="server" CssClass="auto-style10" OnClick="RegBtn_Click" Text="Register" Width="64px" /> --%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1login" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" CssClass="auto-loginbtn" ForeColor="White" Height="33px" OnClick="Button1login_Click" Text="login" Width="70px" />
                    <br />
                    <br />
                    </strong>
                </td>
               
            </tr>
        </table>
    </form>
</body>
</html>

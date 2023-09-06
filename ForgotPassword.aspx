﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Title="Forgot Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css"/>

	<link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>

	<link rel="stylesheet" type="text/css" href="login/fonts/iconic/css/material-design-iconic-font.min.css"/>

	<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css"/>

	<link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css"/>

	<link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css"/>

	<link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css"/>

	<link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css"/>

	<link rel="stylesheet" type="text/css" href="login/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="login/css/main.css"/>
    <script type="text/javascript">
        $('#txtfname').focus(function () {
            $('#lblTitle').hide();
        });

    </script>
   <!--  <script type="text/javascript">
        function hideLabel()
        {   
            if (txtfname.Text.length > 0) {
                document.getElementById('lblTitle').hidden = true;
            } else {
                document.getElementById('lblTitle').hidden = false;
            }
        }
        function showLabel()
        {
            document.getElementById('lblTitle').hidden = false;
        }
     </script>  onfocus="hideLabel();"-->
</head>
<body>
    
        	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-5 p-b-20">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-70">
						Password Change
					</span>
					<!--<span class="login100-form-avatar">
						<img src="images/avatar-01.jpg" alt="AVATAR">
					</span>-->

					<!--<div class="wrap-input100 validate-input m-b-50" data-validate = "Enter Old Password">
						<asp:Textbox class="input100" type="password" name="oldpass" runat="server" TextMode="Password" Text='<%#Eval("Password") %>' ontextchanged="txtoldpass_TextChanged" ID="txtoldpass"></asp:Textbox>
						<span class="focus-input100" id="lblTitle" data-placeholder="Old Password"></span>
					</div>-->
                    <asp:TextBox ID="txtpass" runat="server" type="password" CssClass="auto-style17" Height="25px" Text='<%#Eval("Password") %>'
                    Width="204px" Visible="False"></asp:TextBox>

					<div class="wrap-input100 validate-input m-t-10 m-b-25" data-validate = "Enter New Password">
						<asp:Textbox class="input100" type="text" name="newpass" runat="server" ID="txtnewpass"></asp:Textbox>
						<span class="focus-input100" data-placeholder="New Password"></span>
					</div>

					<div class="wrap-input100 validate-input m-t-10 m-b-25" data-validate = "Enter Confirm Password">
						<asp:Textbox class="input100" type="text" name="confirmpass" runat="server" ID="txtconfirmpass"></asp:Textbox>
						 
                        <span class="focus-input100" data-placeholder="Confirm Password"></span>
					
                    </div>

                    <div class="text-sm-center">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" 
                        ErrorMessage="Enter a match password!" CssClass="auto-style14" style="font-size: small"></asp:CompareValidator>
                    </div>
                     <div><table>
                         <tr>
                       <td class="text-sm-center">
                    <asp:Label ID="lblerror" runat="server" style="margin-left:30px" Font-Bold="False" ForeColor="Red"></asp:Label>
                       </td></tr>
                         </table>
                    </div>

					<div class="container-login100-form-btn">
						<asp:Button ID="btnpass" Text="Change Password" class="login100-form-btn" runat="server" onclick="btnpass_Click"/>
							
						
					</div>

					<ul class="login-more p-t-190">

						<li>
							<span class="txt1">
								I have an account!
							</span>

							<a href="Login.aspx" class="txt2">
								Sign In
							</a>
						</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
        <div id="dropDownSelect1"></div>
    
    <script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="login/vendor/animsition/js/animsition.min.js"></script>

	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="login/vendor/select2/select2.min.js"></script>

	<script src="login/vendor/daterangepicker/moment.min.js"></script>
	<script src="login/vendor/daterangepicker/daterangepicker.js"></script>

	<script src="login/vendor/countdowntime/countdowntime.js"></script>

	<script src="login/js/main.js"></script>
</body>
</html>

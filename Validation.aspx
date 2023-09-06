<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" Title="Validation Check" %>

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
						Validation Information
					</span>
					<!--<span class="login100-form-avatar">
						<img src="images/avatar-01.jpg" alt="AVATAR">
					</span>-->

					<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter Email ID">
						<asp:Textbox class="input100" type="text" name="username" runat="server" ID="txtuname"></asp:TextBox>
						<span class="focus-input100" data-placeholder="Email ID"></span>
                           </div>

					<div class="wrap-input100 validate-input m-t-10 m-b-25" data-validate = "Enter Mobile No">
						<asp:Textbox class="input100" type="text" name="newmobile" runat="server" ID="txtMobile"></asp:Textbox>
						<span class="focus-input100" data-placeholder="Mobile No"></span>
					</div>

					
                     <div><table>
                         <tr>
                       <td>
                    <asp:Label ID="lblerror" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
                       </td></tr>
                         </table>
                    </div>

					<div class="container-login100-form-btn">
						<asp:Button ID="btnCheck" Text="Checking" class="login100-form-btn" runat="server" onclick="btnCheck_Click"/>
							
						
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
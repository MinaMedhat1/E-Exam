<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="examApp.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
</head>
<body>
    <form id="form1" runat="server"  class="login-form">
         <div id="owl-login1">
		<div class="eyes1"></div>
		<div class="arm-up-right1"></div>
		<div class="arm-up-left1"></div>
		<div class="arm-down-left1"></div>
		<div class="arm-down-right1"></div>
	</div>

	<div class="form-wrapper">

		<div class="field-wrapper">
			<label for="email" class="fa fa-envelope"></label>
			
            <asp:TextBox ID="email" runat="server" placeholder="Email" required></asp:TextBox>
		    
		</div>

		<div class="field-wrapper">
			<label for="password" class="fa fa-asterisk"></label>
			
            <asp:TextBox ID="password" CssClass="pass" runat="server" placeholder="Password" TextMode="Password" required></asp:TextBox>
		  
		</div>

	</div>

	<div class="form-actions">
		
        <asp:Button ID="Login" class="btn" runat="server" Text="Login" OnClick="Login_Click" />
	</div>
</form>
<script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function ($) {

		var $owl = $('#owl-login1');

		$('input[type="password"]').on('focus', function () {
			$owl.addClass('password');
		}).on('focusout', function () {
			$owl.removeClass('password');
		});

	});
</script>
</body>
</html>
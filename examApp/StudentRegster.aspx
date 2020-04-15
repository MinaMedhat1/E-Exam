<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegster.aspx.cs" Inherits="examApp.StudentRegster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>SignUp</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
</head>
<body>
    <form id="form1" runat="server" class="login-form">
        <div id="owl-login1">
            <div class="eyes1"></div>
            <div class="arm-up-right1"></div>
            <div class="arm-up-left1"></div>
            <div class="arm-down-left1"></div>
            <div class="arm-down-right1"></div>
        </div>

        <div class="form-wrapper">
            <div class="field-wrapper">
                <label for="name" class="fa fa-user"></label>

                <asp:TextBox ID="name" runat="server" placeholder="Name" required></asp:TextBox>
            </div>

            <div class="field-wrapper">
                <label for="email" class="fa fa-envelope"></label>
                <asp:TextBox ID="email" runat="server" placeholder="Email" required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Please enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="field-wrapper">
                <label for="password" class="fa fa-asterisk"></label>
                <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password" required></asp:TextBox>

            </div>

            <div class="field-wrapper">
                <label for="password-confirm" class="fa fa-asterisk"></label>
                <asp:TextBox ID="PasswordConfirm" CssClass="pass" runat="server" placeholder="Confirm Password" TextMode="Password" required></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="PasswordConfirm" ErrorMessage="Both password Must be same" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div class="field-wrapper">
                <%--<asp:DropDownList CssClass="select-box" ID="Level" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Level_SelectedIndexChanged">
                    
                </asp:DropDownList>--%>
                <asp:DropDownList ID="DropDownList1" CssClass="select-box" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="field-wrapper">
                <%--<asp:DropDownList CssClass="select-box" ID="Dep" runat="server">
                    
                </asp:DropDownList>--%>
                <asp:DropDownList ID="DropDownList2" CssClass="select-box" runat="server"></asp:DropDownList>
            </div>
        </div>

        <div class="form-actions">
            <a href="StudentLogin.aspx">Login</a>
            <asp:Button ID="SignUp" class="btn" runat="server" Text="SignUp" OnClick="SignUp_Click" />
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

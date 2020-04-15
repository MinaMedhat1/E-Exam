<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="examApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Welcome</title>
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

	

		

	<div class="form-actions" style="text-align:center;">
        
	   <asp:Label ID="Label2" class="label"  runat="server" Text="Welcome to our website  Please Click here"></asp:Label>
        <br />
       <div class="container">
        <asp:Label ID="Label1" style="color: #B4886B; font-weight: bold; display: block;"  runat="server" Text="You are a/an....."></asp:Label>
        <br />
        <br />
	    <asp:Button ID="Admin" class="myButton" runat="server" Text="Admin" OnClick="Admin_Click" />
        <br />
        <br />
        <asp:Button ID="Professor" class="myButton" runat="server" Text="Professor" OnClick="Professor_Click" />
        <br />
        <br />
        <asp:Button ID="Student" class="myButton" runat="server" Text="Student" OnClick="Student_Click" />
	   </div>
	</div>
</form>
<script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

    $(".label").click(function () {
    if ( $(".container").first().is( ":hidden" ) ) {
        $(".container").slideDown("slow");
  } else {
        $(".container").hide();
  }
});
</script>
</body>
</html>

</html>

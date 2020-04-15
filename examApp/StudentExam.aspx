<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentExam.aspx.cs" Inherits="examApp.StudentExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
	<title>Exam</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
     <style type="text/css">
         .auto-style1 {
             text-align: left;
         }
         .auto-style2 {
             left: 15%;
             top: 15%;
             position: absolute;
             text-decoration-style: solid;
             height: 70%;
             width: 70%;
             font-size: larger;
             text-align: left;
             background-color: white;
         }
         .auto-style3 {
             text-align: center;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            
          <div class="inner-Right1">
                <div id="level" class="auto-style2">
                     <p class="auto-style3">Exam</p>
                    <br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br /><br />
                     <div class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server"  ></asp:RadioButtonList>
                     </div>
                    <br /><br />

                    <asp:Button ID="Button1" runat="server" Text="Next" CssClass="btn" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Back" CssClass="btn" Visible="False" OnClick="Button2_Click" />
                     <asp:Label ID="Label2" runat="server" Text="1" Visible="False"></asp:Label>
                     <asp:Label ID="Label3" runat="server" Text="0" Visible="False"></asp:Label>
                     <asp:Label ID="Label4" runat="server" Text="0" Visible="False"></asp:Label>
                     <asp:Label ID="Label5" runat="server" Text="0" Visible="False"></asp:Label>
                     <asp:Label ID="Label6" runat="server" Text="0" Visible="False"></asp:Label>
                     <asp:Label ID="Label7" runat="server" Text="0" Visible="False"></asp:Label>
                     <asp:Label ID="Label8" runat="server" Text="0" Visible="False"></asp:Label>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>


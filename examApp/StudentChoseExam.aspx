<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentChoseExam.aspx.cs" Inherits="examApp.StudentChoseExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
	<title>Chose Exam</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
</head>
<body>
    <form id="form1" runat="server">
       <div class="outer">
            <div class="Head1">
                 <ul>
                    <li id="H">
                        <asp:HyperLink ID="HyperLink5" runat="server">Home</asp:HyperLink></li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink4" runat="server"  NavigateUrl="~/StudentChoseExam.aspx">Chose Exam</asp:HyperLink>
                    </li>
                   
                    <li id="">
                        <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/StudentResult.aspx">Student Result</asp:HyperLink>
                    </li>
                </ul> 
            </div>
          <div class="inner-Right1">
                <div id="level" class="inner">
                     <p class="p">Chose Exam</p>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                    <br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    <br /><br />

                    <asp:Button ID="Button1" runat="server" Text="start Exam" CssClass="btn" OnClick="Button1_Click" />
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

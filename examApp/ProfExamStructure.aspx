<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfExamStructure.aspx.cs" Inherits="examApp.ProfExamStructure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Exam Structure</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
    <style type="text/css">
        .auto-style2 {
            width: 98%;
            margin: auto;
        }
        .auto-style3 {
            width: 259px;
        }
        .auto-style5 {
            width: 259px;
            height: 46px;
        }
        .auto-style6 {
            width: 171px;
            height: 46px;
        }
        .auto-style8 {
            width: 171px;
        }
        .auto-style9 {
            width: 248px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="Head1">
                 <ul>
                    <li id="H">
                        <asp:HyperLink ID="HyperLink5" runat="server">Home</asp:HyperLink></li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink4" runat="server"  NavigateUrl="~/ProfAddChapters.aspx">Add Chapters</asp:HyperLink>
                    </li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/ProfAddQuestion.aspx">Add Question</asp:HyperLink>
                    </li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/ProfEditChapters.aspx">Edit Chapters</asp:HyperLink>
                    </li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink3" runat="server"  NavigateUrl="~/ProfEditQuestion.aspx">Edit Question</asp:HyperLink>
                    </li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink6" runat="server"  NavigateUrl="~/ProfShowResult.aspx">Show Result</asp:HyperLink>
                    </li>
                     <li id="">
                        <asp:HyperLink ID="HyperLink7" runat="server"  NavigateUrl="~/ProfExamStructure.aspx">Exam Structure</asp:HyperLink>
                    </li>
                </ul> 
            </div>

            <div class="inner-Right1">
                <div id="level" class="inner12">
                    <p class="p">Exam Structure</p>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                    <br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    <br /><br />
                    <div class="cen">

                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style5">
                                        <p class="p1">Number of all question :</p>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:DropDownList ID="DropDownList3" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <p class="p1">Number of MCQ question :</p>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:DropDownList ID="DropDownList4" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                    <td class="auto-style9">
                                        <p class="p1">Number of T/F question :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList5" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                </tr>
                                                               
                            </table>
                        <table class="cen">
                            <tr>
                                <td>
                                    <p class="p1">Num of ques A (MCQ):</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList6" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td>
                                    <p class="p1">Num of ques B (MCQ):</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList7" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td>
                                    <p class="p1">Num of ques C(MCQ):</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList8" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" Enabled="False"></asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                         <table class="cen">
                            <tr>
                                <td>
                                    <p class="p1">Num of ques A (T/F):</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList9" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td>
                                    <p class="p1">Num of ques B (T/F):</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList10" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td>
                                    <p class="p1">Num of ques C(T/F):</p>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList11" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" Enabled="False"></asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <asp:Button ID="Button4" runat="server" Text="save" CssClass="btn" OnClick="Button4_Click"/>
                        </div>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

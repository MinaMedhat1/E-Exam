<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfAddQuestion.aspx.cs" Inherits="examApp.ProfAddQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Add Question</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer11">
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
                </ul>
            </div>

            <div class="inner-Right12">
                <div id="level" class="inner">
                    <p class="p">Add Subject</p>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                    <br /><br />
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="mydropdownlist">
                        <asp:ListItem Selected="True">Selct level</asp:ListItem>
                        <asp:ListItem Value="A">A</asp:ListItem>
                        <asp:ListItem Value="B">B</asp:ListItem>
                        <asp:ListItem Value="C">C</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />
                     <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem >select type of question</asp:ListItem>
                        <asp:ListItem Value="T/F">True &amp; false</asp:ListItem>
                        <asp:ListItem Value="MCQ">Chose</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />
                    <asp:TextBox ID="queEn" runat="server" Visible="false" Width="387px" Font-Bold="True" Font-Size="" Height="44px" placeholder="Add Question in English" TextMode="MultiLine"></asp:TextBox>
                    <br /><br />
                    <%--<asp:TextBox ID="queAr" runat="server" Visible="false" Width="387px" Font-Bold="True" Font-Size="" Height="44px" placeholder="Add Question in Arbic" TextMode="MultiLine"></asp:TextBox>
                    <br /><br />--%>
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <p>Enter the answers in english</p>
                        <asp:TextBox ID="TextBox1"  runat="server" placeholder="Enter Anwser one" Width="220px" Height="33"  CssClass="p1" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Anwser two" Width="220px" Height="33"  CssClass="p1" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Anwser three" Width="220px" Height="33"  CssClass="p1" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Anwser four" Width="220px" Height="33" CssClass="p1" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                        <br />
                        <%--<p>Enter the answers in arbic</p>
                        <asp:TextBox ID="TextBox5"  runat="server" placeholder="Enter Anwser one" Width="220px" Height="33"  CssClass="p1" AutoPostBack="True"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Anwser two" Width="220px" Height="33"  CssClass="p1" AutoPostBack="True" ></asp:TextBox>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Anwser three" Width="220px" Height="33"  CssClass="p1" AutoPostBack="True" ></asp:TextBox>
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Anwser four" Width="220px" Height="33" CssClass="p1" AutoPostBack="True" ></asp:TextBox>--%>
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" Visible="false">
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist">

                            <asp:ListItem Selected="True">select correct answer</asp:ListItem>
                        </asp:DropDownList>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server" Visible="false">
                        <p >select correct answer</p>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:Panel>
                    <asp:Button ID="Button1" runat="server" Text="save" CssClass="btn" OnClick="Button1_Click"  />
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

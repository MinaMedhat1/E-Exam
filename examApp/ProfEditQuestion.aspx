<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfEditQuestion.aspx.cs" Inherits="examApp.ProfEditQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Edit Question</title>
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

            <div class="inner-Right1">
                <div id="level" class="inner">
                    <p class="p">Edit Question</p>
                    
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" ></asp:DropDownList>
                    <br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" ></asp:DropDownList>
                    <br /><br />
                    <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Question_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                        <Columns>
                            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                            <asp:BoundField DataField="Question_ID" HeaderText="Question_ID" ReadOnly="True" InsertVisible="False" SortExpression="Question_ID"></asp:BoundField>
                            <%--<asp:BoundField DataField="Question_Ar" HeaderText="Question_Ar" SortExpression="Question_Ar"></asp:BoundField>--%>
                            <asp:BoundField DataField="Question_En" HeaderText="Question_En" SortExpression="Question_En"></asp:BoundField>
                            <%--<asp:BoundField DataField="Answer_Ar" HeaderText="Answer_Ar" SortExpression="Answer_Ar"></asp:BoundField>--%>
                            <asp:BoundField DataField="Answer_En" HeaderText="Answer_En" SortExpression="Answer_En"></asp:BoundField>
                            <asp:BoundField DataField="Question_Level" HeaderText="Question_Level" SortExpression="Question_Level"></asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Question.Question_ID,Tbl_Question.Question_Ar,Tbl_Question.Question_En ,Tbl_Answer.Answer_Ar,Tbl_Answer.Answer_En,Tbl_Question.Question_Level FROM Tbl_Question,Tbl_Answer where Tbl_Question.Question_ID = Tbl_Answer.Question_ID and Tbl_Answer.Correct_Answer = 1 and  Tbl_Question.Chapter_ID = @Chapter_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Chapter_ID"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

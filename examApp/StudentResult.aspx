<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="examApp.StudentResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Show result</title>
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
                     <p class="p">Show Result</p>
                    <br /><br />
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                            <%--<asp:BoundField DataField="Name_Er" HeaderText="Name_Er" SortExpression="Name_Er"></asp:BoundField>--%>
                            <asp:BoundField DataField="Name_En" HeaderText="Name_En" SortExpression="Name_En"></asp:BoundField>
                            <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result"></asp:BoundField>
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

                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT  Tbl_Student.Name,Tbl_Subject.Name_Er,Tbl_chapter.Name_En , Tbl_Result.Result FROM Tbl_Student,Tbl_Subject,Tbl_chapter,Tbl_Result where Tbl_Result.Student_ID =  Tbl_Student.Student_ID and Tbl_Result.Subject_ID = Tbl_Subject.Subject_ID and Tbl_Result.Chapter_ID = Tbl_chapter.Chapter_ID and Tbl_Result.Student_ID =@Student_ID">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="id" Name="Student_ID"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

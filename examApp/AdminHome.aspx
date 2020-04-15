<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="examApp.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Admin Home</title>
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
                        <asp:HyperLink ID="HyperLink4" runat="server"  NavigateUrl="~/confirmProf.aspx">Confirm Professor</asp:HyperLink>
                    </li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink3" runat="server"  NavigateUrl="~/confirmStudent.aspx">Confirm Student</asp:HyperLink>
                    </li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddLevel.aspx">Add level</asp:HyperLink></li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddDepartment.aspx">Add Department</asp:HyperLink></li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AddSubject.aspx">Add Subject</asp:HyperLink></li>
                    <%-- <li id="E"><asp:HyperLink ID="HyperLink7" runat="server">Edit Prof.</asp:HyperLink></li> --%>
                    <li id="">
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/EditDepartment.aspx">Edit Department</asp:HyperLink></li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/EditSubject.aspx">Edit Subject</asp:HyperLink></li>
               <li id="">
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/EditProffesor.aspx">Edit Prof</asp:HyperLink></li>
                    <li id="">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/EditStudent.aspx">Edit Student</asp:HyperLink></li>
               
                </ul>
            </div>

            <div class="inner-Right1">
                <div id="Home" class="inner1">
                    Home
                <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" Width="287px" Font-Bold="True" Font-Size="Larger" Height="33px" placeholder="Add Level"></asp:TextBox>
                    <br />
                </div>

                <%--<asp:Panel ID="" runat="server" Visible="False" class="inner">
                    <div id="Aprof" class="inner">

                        <p>Confirm Professor</p>
                        <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Style="margin-left: 135px" Width="612px" AutoGenerateColumns="False" DataKeyNames="Prof_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="Conferm" SelectText="Conferm" />
                                <asp:BoundField DataField="Prof_ID" HeaderText="Prof_ID" ReadOnly="True" InsertVisible="False" SortExpression="Prof_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                            </Columns>

                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT [Prof_ID], [Name], [Password], [Email] FROM [Tbl_Prof] WHERE ([Approval] = @Approval)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="Approval" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                </asp:Panel>--%>

                <asp:Panel ID="Astudent" runat="server" Visible="False" class="inner">
                    <div>
                        <p>Confirm Student</p>
                        <asp:GridView ID="GridView4" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Style="margin-left: 135px" Width="412px" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="Conferm" SelectText="Conferm" />
                                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" InsertVisible="False" SortExpression="Student_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                <asp:BoundField DataField="Level_ID" HeaderText="Level_ID" SortExpression="Level_ID"></asp:BoundField>
                                <asp:BoundField DataField="Department_ID" HeaderText="Department_ID" SortExpression="Department_ID"></asp:BoundField>
                            </Columns>

                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT [Student_ID], [Name], [Password], [Email], [Level_ID], [Department_ID] FROM [Tbl_Student] WHERE ([Approval] = @Approval)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="Approval" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </asp:Panel>

                <div id="level" class="inner1">
                    Add Level
                <br />
                    <br />
                    <br />
                    <asp:TextBox ID="Level" runat="server" Width="287px" Font-Bold="True" Font-Size="Larger" Height="33px" placeholder="Add Level"></asp:TextBox>
                    <br />

                </div>

                <div id="dep" class="inner1">
                    Add Department
                <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" CssClass="mydropdownlist" runat="server" Width="165px">
                        <asp:ListItem Text="One" Value="One" />
                        <asp:ListItem Text="Two" Value="Two" />
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:TextBox ID="Dep" runat="server" Width="287px" Font-Bold="True" Font-Size="Larger" Height="33px" placeholder="Add Department"></asp:TextBox>
                    <br />
                </div>

                <div id="Asubj" class="inner1">
                    Add Subject
                 <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" CssClass="mydropdownlist" runat="server" Width="165px">
                        <asp:ListItem Text="One" Value="One" />
                        <asp:ListItem Text="Two" Value="Two" />
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" CssClass="mydropdownlist" runat="server" Width="165px">
                        <asp:ListItem Text="One" Value="One" />
                        <asp:ListItem Text="Two" Value="Two" />
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList4" CssClass="mydropdownlist" runat="server" Width="165px">
                        <asp:ListItem Text="One" Value="One" />
                        <asp:ListItem Text="Two" Value="Two" />
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="287px" Font-Bold="True" Font-Size="Larger" Height="33px" placeholder="Subject Name"></asp:TextBox>
                    <br />
                </div>
                <%--
            <div id="Edit" class="inner" >
                Edit Professor data
                
               
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="margin-left: 138px" Width="404px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                
               
                </div>
                --%>
                <div id="EditDepartment" class="inner1">
                    Edit Department
               
               
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Style="margin-left: 135px" Width="412px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>


                </div>

                <div id="EditSubject" class="inner1">
                    Edit Subject
               
               
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Style="margin-left: 135px" Width="412px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>


                </div>

            </div>
        </div>
    </form>
    <script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>


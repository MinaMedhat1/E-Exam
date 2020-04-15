<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editProf.aspx.cs" Inherits="examApp.editProf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Edit Prof</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="inner-Right1">
                <div id="Home" class="inner">
                    <asp:Panel ID="Panel1" runat="server" Visible="False" >
                        <p>Edit Prof</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Name :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Password:</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Email :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <br />

                        <asp:Button ID="Button1" runat="server" Text="cancel" CssClass="btn" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="save" CssClass="btn" OnClick="Button2_Click" />
                        <asp:Button ID="Button9" runat="server" Text="Delete" CssClass="btn" OnClick="Button9_Click"/>

                    </asp:Panel>


                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <p>Edit Department</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="name_en_dep" runat="server" CssClass="tx1" ></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="group2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="name_en_dep" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td>
                                        <p class="p1">Name in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="name_ar_dep" runat="server" CssClass="tx1" ></asp:TextBox>
                                    </td>
                                </tr>--%>
                               
                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="cancel" CssClass="btn" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" ValidationGroup="group2" runat="server" Text="save" CssClass="btn" OnClick="Button4_Click" />
                        <asp:Button ID="Button5" runat="server" Text="Delete" CssClass="btn" OnClick="Button5_Click" />                        
                    </asp:Panel>

                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <p>Edit Subject</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Prof :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Department :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                    <asp:RequiredFieldValidator ValidationGroup="group1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tx1"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="group1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td>
                                        <p class="p1">Name in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="tx1"></asp:TextBox>
                                    </td>--%>
                                <%--</tr>--%>

                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button6" runat="server" Text="cancel" CssClass="btn" OnClick="Button6_Click" />
                        <asp:Button ID="Button7" ValidationGroup="group1" runat="server" Text="save" CssClass="btn" OnClick="Button7_Click"  />
                        <asp:Button ID="Button8" runat="server" Text="Delete" CssClass="btn" OnClick="Button8_Click" />
                    </asp:Panel>

                     <asp:Panel ID="Panel4" runat="server" Visible="False" >
                        <p>Edit Student</p>
                         <div class="cen">

                             <table class="ma">
                                 <tr>
                                     <td>
                                         <p class="p1">Name :</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox3" runat="server" CssClass="tx1" ></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Password:</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox7" runat="server" CssClass="tx1"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Email :</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox8" runat="server" CssClass="tx1"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Level :</p>
                                     </td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList5" runat="server" CssClass="mydropdownlist" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Department :</p>
                                     </td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList6" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                                     </td>
                                 </tr>
                             </table>
                         </div>
                        <br />

                        <asp:Button ID="Button10" runat="server" Text="cancel" CssClass="btn" OnClick="Button10_Click" />
                        <asp:Button ID="Button11" runat="server" Text="save" CssClass="btn" OnClick="Button11_Click"/>
                        <asp:Button ID="Button12" runat="server" Text="Delete" CssClass="btn" OnClick="Button12_Click"/>

                    </asp:Panel>

                    <asp:Panel ID="Panel5" runat="server" Visible="False">
                        <p>Edit Chapter</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Subject :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="tx1" ></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="group5" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox9" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               <%-- <tr>
                                    <td>
                                        <p class="p1">Name in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="tx1" ></asp:TextBox>
                                    </td>
                                </tr>--%>
                               
                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button13" runat="server" Text="cancel" CssClass="btn" OnClick="Button13_Click"/>
                        <asp:Button ID="Button14" ValidationGroup="group5"  runat="server" Text="save" CssClass="btn" OnClick="Button14_Click"/>
                        <asp:Button ID="Button15" runat="server" Text="Delete" CssClass="btn" OnClick="Button15_Click"/>                        
                    </asp:Panel>

                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                        <p>Edit Question</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Question level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="mydropdownlist">
                                            <asp:ListItem Selected="True">Selct level</asp:ListItem>
                                            <asp:ListItem Value="A">A</asp:ListItem>
                                            <asp:ListItem Value="B">B</asp:ListItem>
                                            <asp:ListItem Value="C">C</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Question in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" Width="387px" Height="44px" TextMode="MultiLine" runat="server" CssClass="tx1" ></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="group6" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox11" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               <%-- <tr>
                                    <td>
                                        <p class="p1">Question  in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" Width="387px" Height="44px" TextMode="MultiLine" runat="server" CssClass="tx1" ></asp:TextBox>
                                    </td>
                                </tr>--%>
                               
                            </table>
                            <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Answer_ID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="Answer_ID" HeaderText="Answer_ID" ReadOnly="True" InsertVisible="False" SortExpression="Answer_ID"></asp:BoundField>
                                    <%--<asp:BoundField DataField="Answer_Ar" HeaderText="Answer_Ar" SortExpression="Answer_Ar"></asp:BoundField>--%>
                                    <asp:BoundField DataField="Answer_En" HeaderText="Answer_En" SortExpression="Answer_En"></asp:BoundField>
                                    <asp:BoundField DataField="Correct_Answer" HeaderText="Correct_Answer" SortExpression="Correct_Answer"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' DeleteCommand="DELETE FROM [Tbl_Answer] WHERE [Answer_ID] = @Answer_ID" InsertCommand="INSERT INTO [Tbl_Answer] ([Answer_Ar], [Answer_En], [Correct_Answer]) VALUES (@Answer_Ar, @Answer_En, @Correct_Answer)" SelectCommand="SELECT [Answer_ID], [Answer_Ar], [Answer_En], [Correct_Answer] FROM [Tbl_Answer] WHERE ([Question_ID] = @Question_ID)" UpdateCommand="UPDATE [Tbl_Answer] SET [Answer_Ar] = @Answer_Ar, [Answer_En] = @Answer_En, [Correct_Answer] = @Correct_Answer WHERE [Answer_ID] = @Answer_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Answer_ID" Type="Int32"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Answer_Ar" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_En" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Correct_Answer" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="id" Name="Question_ID" Type="Int32"></asp:QueryStringParameter>

                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Answer_Ar" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_En" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Correct_Answer" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_ID" Type="Int32"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                       
                        <asp:Button ID="Button16" runat="server" Text="cancel" CssClass="btn" OnClick="Button16_Click"/>
                        <asp:Button ID="Button17" ValidationGroup="group6" runat="server" Text="save" CssClass="btn" OnClick="Button17_Click"/>
                        <asp:Button ID="Button18" runat="server" Text="Delete" CssClass="btn" OnClick="Button18_Click"/>                        
                    </asp:Panel>
                </div>

            </div>
        </div>
    </form>
    <script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfExamStructure : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var x = Request.QueryString["id"].ToString();
                int y = int.Parse(x);

                HyperLink1.NavigateUrl = "ProfAddQuestion.aspx?id=" + x;
                HyperLink2.NavigateUrl = "ProfEditChapters.aspx?id=" + x;
                HyperLink3.NavigateUrl = "ProfEditQuestion.aspx?id=" + x;
                HyperLink4.NavigateUrl = "ProfAddChapters.aspx?id=" + x;
                HyperLink5.NavigateUrl = "ProfAddQuestion.aspx?id=" + x;
                HyperLink6.NavigateUrl = "ProfShowResult.aspx?id=" + x;

                var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Prof_ID.Equals(y) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Er };
                var statename = stateid.ToList();
                if (statename.Count > 0)
                {
                    DropDownList2.DataValueField = "Subject_ID";
                    DropDownList2.DataTextField = "Name_Er";
                    DropDownList2.DataSource = statename;
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, "--- select sub----");
                }
                DropDownList4.Items.Add(""+0);
                DropDownList5.Items.Add("" + 0);
                DropDownList6.Items.Add("" + 0);
                DropDownList7.Items.Add("" + 0);
                DropDownList8.Items.Add("" + 0);
                DropDownList9.Items.Add("" + 0);
                DropDownList10.Items.Add("" + 0);
                DropDownList11.Items.Add("" + 0);
                //DropDownList12.Items.Add("" + 0);

            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList2.SelectedValue);
            var stateid = from Tbl_chapter in db.Tbl_chapter where Tbl_chapter.Subject_ID.Equals(ch) select new { Tbl_chapter.Name_En, Tbl_chapter.Chapter_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList1.DataValueField = "Chapter_ID";
                DropDownList1.DataTextField = "Name_En";
                DropDownList1.DataSource = statename;
                DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, "--- select chapter ----");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(DropDownList1.SelectedValue);
            int t = db.Tbl_Question.Count(u => u.Chapter_ID == ch);
            for (int i = 1; i <= t; i++)
            {
                DropDownList3.Items.Add(""+i);
            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList4.Items.Clear();
            DropDownList5.Items.Clear();
            int x = int.Parse(DropDownList3.Text);
            for (int i = 1; i <= x; i++)
            {
                DropDownList4.Items.Add("" + i);
                DropDownList5.Items.Add("" + i);

            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList6.Items.Clear();
            int x = int.Parse(DropDownList3.Text);
            int y = int.Parse(DropDownList4.Text);
            int z = x - y;
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("" + z);
            for (int i = 1; i <= y; i++)
            {
                DropDownList6.Items.Add("" + i);
            }

            DropDownList9.Items.Clear();
            for (int i = 1; i <= z; i++)
            {
                DropDownList9.Items.Add("" + i);
            }
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList9.Items.Clear();
            int x = int.Parse(DropDownList3.Text);
            int y = int.Parse(DropDownList5.Text);
            int z = x - y;
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add("" + z);
            for (int i = 1; i <= y; i++)
            {
                DropDownList9.Items.Add("" + i);
            }

            DropDownList6.Items.Clear();
            for (int i = 1; i <= z; i++)
            {
                DropDownList6.Items.Add("" + i);
            }
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h2 = int.Parse(DropDownList4.Text);
            int h = int.Parse(DropDownList6.Text);
            DropDownList7.Enabled = true;
            DropDownList7.Items.Clear();
            int h3 = h2 - h;
            DropDownList7.Items.Clear();
            for (int i = 0; i <= h3; i++)
            {
                DropDownList7.Items.Add("" + i);
            }
        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h = int.Parse(DropDownList6.Text);
            int h2 = int.Parse(DropDownList4.Text);
            int h3 = int.Parse(DropDownList7.Text);
            DropDownList8.Enabled = true;
            int h4 = h2 - h - h3;
            DropDownList8.Items.Clear();
            DropDownList8.Items.Add("" + h4);
        }

        protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h2 = int.Parse(DropDownList5.Text);
            int h = int.Parse(DropDownList9.Text);
            DropDownList10.Enabled = true;
            DropDownList10.Items.Clear();
            int h3 = h2 - h;
            DropDownList10.Items.Clear();
            for (int i = 0; i <= h3; i++)
            {
                DropDownList10.Items.Add("" + i);
            }
        }

        protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            int h = int.Parse(DropDownList9.Text);
            int h2 = int.Parse(DropDownList5.Text);
            int h3 = int.Parse(DropDownList10.Text);
            DropDownList11.Enabled = true;
            int h4 = h2 - h - h3;
            DropDownList11.Items.Clear();
            DropDownList11.Items.Add("" + h4);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(DropDownList6.Text=="")
            {
                var ExamStruc = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = 0,
                    Num_Ques_Mcq_B = int.Parse(DropDownList7.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList8.Text),
                    Num_Ques_TF_A = int.Parse(DropDownList9.Text),
                    Num_Ques_TF_B = int.Parse(DropDownList10.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList11.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
            else if (DropDownList9.Text == "")
            {
                var ExamStruc1 = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = int.Parse(DropDownList6.Text),
                    Num_Ques_Mcq_B = int.Parse(DropDownList7.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList8.Text),
                    Num_Ques_TF_A = 0,
                    Num_Ques_TF_B = int.Parse(DropDownList10.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList11.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc1);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
            else
            {

                var ExamStruc = new Tbl_ExamStructure
                {
                    Chapter_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Num_Ques_Mcq_A = int.Parse(DropDownList6.Text),
                    Num_Ques_Mcq_B = int.Parse(DropDownList7.Text),
                    Num_Ques_Mcq_C = int.Parse(DropDownList8.Text),
                    Num_Ques_TF_A = int.Parse(DropDownList9.Text),
                    Num_Ques_TF_B = int.Parse(DropDownList10.Text),
                    Num_Ques_TF_C = int.Parse(DropDownList11.Text),
                };
                db.Tbl_ExamStructure.Add(ExamStruc);
                db.SaveChanges();
                Response.Redirect("ProfExamStructure.aspx");
            }
        }
    }
}
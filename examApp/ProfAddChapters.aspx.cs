using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfAddChapters : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //var le = from Tbl_Level in db.Tbl_Level  select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID, Tbl_Level.Name_Ar };
                //DropDownList1.DataSource = le.ToList();
                //DropDownList1.DataValueField = "Level_ID";
                //DropDownList1.DataTextField = "Name_Er";
                //DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, new ListItem("--- select level----"));

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
                    DropDownList3.DataValueField = "Subject_ID";
                    DropDownList3.DataTextField = "Name_Er";
                    DropDownList3.DataSource = statename;
                    DropDownList3.DataBind();
                    DropDownList3.Items.Insert(0, "--- select sub----");
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int dep = Convert.ToInt32(DropDownList1.SelectedValue);
            //var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dep) select new { Tbl_department.Name_En, Tbl_department.Department_ID };
            //var statename = stateid.ToList();
            //if (statename.Count > 0)
            //{
            //    DropDownList2.DataValueField = "Department_ID";
            //    DropDownList2.DataTextField = "Name_En";
            //    DropDownList2.DataSource = statename;
            //    DropDownList2.DataBind();
            //    DropDownList2.Items.Insert(0, "--- select dep----");
            //}
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int sub = Convert.ToInt32(DropDownList2.SelectedValue);
            //var stateid = from Tbl_Subject in db.Tbl_Subject where Tbl_Subject.Subject_ID.Equals(sub) select new { Tbl_Subject.Subject_ID, Tbl_Subject.Name_Er };
            //var statename = stateid.ToList();
            //if (statename.Count > 0)
            //{
            //    DropDownList3.DataValueField = "Subject_ID";
            //    DropDownList3.DataTextField = "Name_Er";
            //    DropDownList3.DataSource = statename;
            //    DropDownList3.DataBind();
            //    DropDownList3.Items.Insert(0, "--- select sub----");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var ch = new Tbl_chapter
            {
                Name_En = LevelEn.Text,
                Name_Ar = " ",
                Subject_ID = int.Parse(DropDownList3.SelectedValue.ToString()),
            };
            db.Tbl_chapter.Add(ch);
            db.SaveChanges();
            LevelEn.Text = "";
            //LevelAr.Text = "";
        }

       
    }
}
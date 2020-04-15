using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class AddSubject : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID };
                DropDownList1.DataSource = le.ToList();
                DropDownList1.DataValueField = "Level_ID";
                DropDownList1.DataTextField = "Name_Er";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--- select level----"));
            
                var pr = from Tbl_Prof in db.Tbl_Prof where Tbl_Prof.Approval.Equals("1") select new { Tbl_Prof.Name, Tbl_Prof.Prof_ID };
                DropDownList3.DataSource = pr.ToList();
                DropDownList3.DataValueField = "Prof_ID";
                DropDownList3.DataTextField = "Name";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("--- select prof----"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sub = new Tbl_Subject
            {
                Name_Er = LevelEn.Text,
                Name_Ar = " ",
                Department_ID = int.Parse(DropDownList2.SelectedValue.ToString()),
                Prof_ID = int.Parse(DropDownList3.SelectedValue.ToString()),
            };
            db.Tbl_Subject.Add(sub);
            db.SaveChanges();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dep = Convert.ToInt32(DropDownList1.SelectedValue);
            var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dep) select new { Tbl_department.Name_En, Tbl_department.Department_ID };
            var statename = stateid.ToList();
            if (statename.Count > 0)
            {
                DropDownList2.DataValueField = "Department_ID";
                DropDownList2.DataTextField = "Name_En";
                DropDownList2.DataSource = statename;
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "--- select dep----");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class StudentRegster : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var le = from Tbl_Level in db.Tbl_Level select new { Tbl_Level.Name_Er, Tbl_Level.Level_ID, Tbl_Level.Name_Ar };
                DropDownList1.DataSource = le.ToList();
                DropDownList1.DataValueField = "Level_ID";
                DropDownList1.DataTextField = "Name_Er";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--- select level----"));
            }
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            var pr = new Tbl_Student
            {
                Approval = "0",
                Name = name.Text,
                Email = email.Text,
                Password = password.Text,
                Level_ID = int.Parse(DropDownList1.SelectedValue.ToString()),
                Department_ID = int.Parse(DropDownList2.SelectedValue.ToString()),
            };
            db.Tbl_Student.Add(pr);
            db.SaveChanges();
            Response.Redirect("StayApprof.aspx?id=" + pr.Name);
        }

       

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        int dept = int.Parse(DropDownList1.SelectedValue.ToString());
        var stateid = from Tbl_department in db.Tbl_department where Tbl_department.Level_ID.Equals(dept) select new { Tbl_department.Name_En, Tbl_department.Department_ID };
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class confirmStudent : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int x = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == x);
            rr.Approval = "1";
            db.SaveChanges();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class AdminHome : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        int p1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            ////Response.Redirect("editProf.aspx?id=" + GridView3.SelectedRow.Cells[2].Text );
            //int x = int.Parse(GridView3.SelectedRow.Cells[1].Text);
            //Tbl_Prof rr = db.Tbl_Prof.First(u => u.Prof_ID == x);
            //rr.Approval = "1";
            //db.SaveChanges();
            //p1 = 1;
            
        }

        

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int x = int.Parse(GridView4.SelectedRow.Cells[1].Text);
            //Tbl_Student rr = db.Tbl_Student.First(u => u.Student_ID == x);
            //rr.Approval = "1";
            //db.SaveChanges();
            //p1 = 2;
        }

        
    }
}
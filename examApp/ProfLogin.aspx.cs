using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfLogin : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (db.Tbl_Prof.Count(u => u.Email == email.Text && u.Password == password.Text) == 1)
            {
                Tbl_Prof rr = db.Tbl_Prof.First(u => u.Email == email.Text && u.Password == password.Text);
                if (rr.Approval == "0")
                {
                    Response.Redirect("StayApprof.aspx?id=" + rr.Name);
                }
                else
                {
                    Response.Redirect("ProfAddChapters.aspx?id=" + rr.Prof_ID);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('False')", true);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfRegister : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PasswordConfirm_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            var pr = new Tbl_Prof
            {
                Approval = "0",
                Name = name.Text,
                Email = email.Text,
                Password = password.Text,
            };
            db.Tbl_Prof.Add(pr);
            db.SaveChanges();
            Response.Redirect("StayApprof.aspx?id=" + pr.Name);

        }
    }
}
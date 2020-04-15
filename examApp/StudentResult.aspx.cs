using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class StudentResult : System.Web.UI.Page
    {
        Exam_System_DBEntities db = new Exam_System_DBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);

            HyperLink4.NavigateUrl = "StudentChoseExam.aspx?id=" + x;
            HyperLink2.NavigateUrl = "StudentResult.aspx?id=" + x;
        }
    }
}
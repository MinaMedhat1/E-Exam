using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void Professor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfLogin.aspx");
        }

        protected void Student_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfLogin.aspx");
        }
    }
}
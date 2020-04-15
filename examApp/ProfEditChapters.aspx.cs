using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examApp
{
    public partial class ProfEditChapters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);

            HyperLink1.NavigateUrl = "ProfAddQuestion.aspx?id=" + x;
            HyperLink2.NavigateUrl = "ProfEditChapters.aspx?id=" + x;
            HyperLink3.NavigateUrl = "ProfEditQuestion.aspx?id=" + x;
            HyperLink4.NavigateUrl = "ProfAddChapters.aspx?id=" + x;
            HyperLink5.NavigateUrl = "ProfAddQuestion.aspx?id=" + x;
            HyperLink6.NavigateUrl = "ProfShowResult.aspx?id=" + x;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"].ToString();
            int y = int.Parse(x);
            Response.Redirect("editProf.aspx?id=" + GridView1.SelectedRow.Cells[1].Text + "&page=" + 6 + "&pr=" + y);

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            var i = 1;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProspectiveHireTest
{
    public partial class Main : BaseMasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptInclude(this, this.GetType(), "JQueryInclude",
                "/Scripts/jquery-1.3.2.min.js");

            ScriptManager.RegisterStartupScript(this, this.GetType(), "FooterScript", "$(\"#currentYearSpan\").text(new Date().getYear())", true);
        }
    }
}

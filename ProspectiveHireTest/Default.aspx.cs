using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProspectiveHireTest
{
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                ContentImage.ImageUrl = string.Format("/Images/{0}", GetRandomImage());
            }
        }

        private string GetRandomImage()
        {
            string[] images = Directory.GetFiles(Server.MapPath("/Images"));
            Random random = new Random();
            return Path.GetFileName(images[random.Next(1000) % images.Length]);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ProspectiveHireTest.Controls
{
    public partial class LeftNav : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                LinkRepeater.ItemDataBound += new RepeaterItemEventHandler(LinkRepeater_ItemDataBound);
                
                LinkRepeater.DataSource = GetLinks();
                LinkRepeater.DataBind();
            }
        }

        private void LinkRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Utils.Hyperlink keyValuePair = (Utils.Hyperlink)e.Item.DataItem;

            HyperLink hyperLink = (HyperLink)e.Item.FindControl("LeftNavHyperLink");
            hyperLink.Text = keyValuePair.name;
            hyperLink.Target = keyValuePair.target;
            hyperLink.NavigateUrl = keyValuePair.url;
        }

        private List<Utils.Hyperlink> GetLinks()
        {
            List<Utils.Hyperlink> links = new List<Utils.Hyperlink>();

            XDocument xmlFile = XDocument.Load(string.Format("{0}/Content/LeftNav.xml", 
                Request.Url.GetLeftPart(UriPartial.Authority)));

            var query = from l in xmlFile.Elements("links").Elements("link")
                        where l.Attribute("isActive").Value == "true"
                        select l;

            foreach (XElement link in query)
            {
                links.Add(new Utils.Hyperlink { name = link.Attribute("name").Value, url = link.Attribute("url").Value, target = link.Attribute("target").Value });
            } 

            return links;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Text;
using NUnit.Framework;
using WatiN.Core;

namespace ProspectiveHireTest.Test
{
    [TestFixture]
    public class MasterPageTests : WebTestBase
    {
        [Test]
        public void HeaderDiv_HasText_TextIsCorrect()
        {
            Div headerDiv = this.Browser.Div(div => div.ClassName == "header");

            Assert.AreEqual("American Presidents, Inc.", headerDiv.Text);
        }

        [Test]
        public void LeftNavHomeHyperLink_UserClick_NavigateToHomePage()
        {
            this.Browser.Link(link => link.Text == "Home").Click();

            Assert.AreEqual("American Presidents, Inc.", this.Browser.Title);
        }

        [Test]
        public void LeftNavAboutUsHyperLink_UserClick_NavigateToAboutUsPage()
        {
            this.Browser.Link(link => link.Text == "About Us").Click();

            Assert.AreEqual("American Presidents, Inc. - About Us", this.Browser.Title);
        }

        [Test]
        public void LeftNavPresidentsHyperLink_UserClick_NavigateToPresidentsPage()
        {
            this.Browser.Link(link => link.Text == "Presidents").Click();

            Assert.AreEqual("American Presidents, Inc. - Presidents", this.Browser.Title);
        }

        [Test]
        public void LeftNavHistoryHyperLink_UserClick_NavigateToHistoryPage()
        {
            this.Browser.Link(link => link.Text == "History").Click();

            Assert.AreEqual("American Presidents, Inc. - History", this.Browser.Title);
        }

        [Test]
        public void FooterDiv_HasText_TextIsCorrect()
        {
            Div footerDiv = this.Browser.Div(div => div.ClassName == "footer");

            Assert.AreEqual("American Presidents, Inc. © 2009", footerDiv.Text);
        }
    }
}

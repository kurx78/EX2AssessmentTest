using System;
using System.Collections.Generic;
using System.Text;
using NUnit.Framework;
using WatiN.Core;

namespace ProspectiveHireTest.Test
{
    [TestFixture]
    public class AboutUsPageTests : WebTestBase
    {
        [Test]
        public void ContentDiv_HasText_TextExists()
        {
            Div contentDiv = this.Browser.Div(div => div.ClassName == "mainContent");

            Assert.AreNotEqual(0, contentDiv.Text.Length);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Text;
using NUnit.Framework;
using WatiN.Core;

namespace ProspectiveHireTest.Test
{
    [TestFixture]
    public class DefaultPageTests : WebTestBase
    {
        [Test]
        public void ContentDiv_HasImage_ImageExists()
        {
            Image contentImage = this.Browser.Image(image => image.Id == "ctl00_ContentPlaceHolder1_ContentImage");

            Assert.AreNotEqual(0, contentImage.Src.Length);
        }

        [Test]
        public void ContentDiv_HasText_TextExists()
        {
            Div contentDiv = this.Browser.Div(div => div.ClassName == "mainContent");

            Assert.AreNotEqual(0, contentDiv.Text.Length);
        }
    }
}

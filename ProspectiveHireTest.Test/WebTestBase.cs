using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using NUnit.Framework;
using WatiN.Core;

namespace ProspectiveHireTest.Test
{
    public class WebTestBase
    {
        private IE browser = null;
        private string rootUrl = string.Empty;

        #region Constructors
        public WebTestBase()
        {
            rootUrl = ConfigurationManager.AppSettings["RootUrl"];
        }
        #endregion

        #region Properties
        public IE Browser
        {
            get { return browser; }
        }

        public string RootUrl
        {
            get { return rootUrl; }
        }
        #endregion

        [TestFixtureSetUp]
        public void SetUpTestFixture()
        {
            IE.Settings.AutoMoveMousePointerToTopLeft = false;
            IE.Settings.MakeNewIeInstanceVisible = false;
        }

        [SetUp]
        public void SetUpTest()
        {
            browser = new IE(rootUrl);
            browser.ClearCookies(rootUrl);
            browser.ClearCache();
        }

        [TearDown]
        public void TearDownTest()
        {
            browser.ClearCookies(rootUrl);
            browser.ClearCache();
            browser.Close();
            browser.Dispose();
            browser = null;
        }
    }
}

using System;
using System.Data;
using System.IO;
using System.Web.UI;

namespace ProspectiveHireTest
{
    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTriggerFileDownload_Click(object sender, EventArgs e)
        {
            try
            {
                var dataAccessInstance = new DataAccess.ExportXML();
                DataTable xmlContentTable = dataAccessInstance.GeneratePresidentsXML();
                var xmlData = xmlContentTable.Rows[0][0].ToString();

                MemoryStream ms = new MemoryStream();
                TextWriter tw = new StreamWriter(ms);
                tw.Write(xmlData);
                tw.Flush();
                byte[] bytes = ms.ToArray();
                ms.Close();

                Response.Clear();
                Response.ContentType = "application/force-download";
                Response.AddHeader("content-disposition", "attachment;    filename=presidents.xml");
                Response.BinaryWrite(bytes);
                Response.End();
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error while generating XML file');", true);
            }


        }
    }
}
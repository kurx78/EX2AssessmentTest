using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ProspectiveHireTest.DataAccess
{
    public class ExportXML
    {
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProspectiveHireTest"].ConnectionString
        public DataTable GeneratePresidentsXML()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProspectiveHireTest"].ConnectionString))
                using (SqlCommand cmd = new SqlCommand("GeneratePresidentsXML", conn))
                {

                    SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                    adapt.SelectCommand.CommandType = CommandType.StoredProcedure;

                    // fill the data table - no need to explicitly call `conn.Open()` - 
                    // the SqlDataAdapter automatically does this (and closes the connection, too)
                    DataTable dt = new DataTable();
                    adapt.Fill(dt);
                    return dt;
                }
            }
            catch
            {
                throw;
            }

        }
    }
}

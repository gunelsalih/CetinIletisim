using System.Configuration;
using System.Data.OleDb;


namespace CetinIletisim
{
    public class DatabaseConnection
    {
        public OleDbConnection OleDBConnection()
        {
            string conString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            OleDbConnection connection = new OleDbConnection(conString);           
            connection.Open();
            return (connection);
        }
    }
}
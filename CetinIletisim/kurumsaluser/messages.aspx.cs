using System;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.UI;

namespace CetinIletisim.kurumsaluser
{
    public partial class messages : System.Web.UI.Page
    {
        DatabaseConnection connection = new DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("default.aspx");
            }          
            GetMessages();           
        }

        private void GetMessages()
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from MessagesOfCustomers";
                var read = cmd.ExecuteReader();
                dl_messages.DataSource = read;
                dl_messages.DataBind();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }       
    }
}
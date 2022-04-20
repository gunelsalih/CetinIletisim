using System;
using System.Data.OleDb;
using System.Web.UI;

namespace CetinIletisim.kurumsaluser
{
    public partial class stockcontrol : Page
    {
        DatabaseConnection connection = new DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("default.aspx");
            }

            GetProducts();            
        }

        private void GetProducts()
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from Products";
                var read = cmd.ExecuteReader();
                dl_product.DataSource = read;
                dl_product.DataBind();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }
    }
}
using System;
using System.Data.OleDb;
using System.Web.UI;

namespace CetinIletisim
{
    public partial class basket : System.Web.UI.Page
    {
        DatabaseConnection connection = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["quantity"] != null && Session["id"] != null)
            {
                GetProducts(Session["id"].ToString());
            }
        }

        private void GetProducts(string id)
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from Products Where ID = @ID";
                cmd.Parameters.AddWithValue("@ID", Convert.ToInt64(id));
                var read = cmd.ExecuteReader();
                rpBasket.DataSource = read;
                rpBasket.DataBind();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }

        protected void btn_odeme_Click(object sender, EventArgs e)
        {
            Response.Redirect("pay.aspx");
        }

        protected void btn_sifirla_Click(object sender, EventArgs e)
        {
            Session["quantity"] = null;
            Session["id"] = null;
            Response.Redirect("product.aspx");
        }
    }
}
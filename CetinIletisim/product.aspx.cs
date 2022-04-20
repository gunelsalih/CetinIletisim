using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CetinIletisim
{
    public partial class product : System.Web.UI.Page
    {
        DatabaseConnection connection = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetCategories();
                GetProducts();
            }            
        }

        private void GetCategories()
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from ProductCategories";
                var categories = cmd.ExecuteReader();
                rpCat.DataSource = categories;
                rpCat.DataBind();
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
            connection.OleDBConnection().Close();
        }
        private void GetProducts()
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from Products";
                var read = cmd.ExecuteReader();
                rpProducts.DataSource = read;
                rpProducts.DataBind();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in rpProducts.Items)
            {
                TextBox txtName = (TextBox)item.FindControl("quantity");
                Label label = (Label)item.FindControl("productID");

                if (txtName != null)
                {
                    string quantity = txtName.Text;
                    string productId = label.Text;

                    Session.Add("quantity", quantity);
                    Session.Add("id", productId);                  
                }
            }
        }
    }
}
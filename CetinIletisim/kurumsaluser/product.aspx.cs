using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.UI;

namespace CetinIletisim.kurumsaluser
{
    public partial class product : System.Web.UI.Page
    {
        DatabaseConnection connection = new DatabaseConnection();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("default.aspx");
            }

            Panel1.Visible = false;
            Panel2.Visible = false;

            DeleteProduct();
            GetProducts();
            GetCategories();
        }

        private void GetCategories()
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from ProductCategories";              
                var categories = new OleDbDataAdapter(cmd);
                var dt = new DataTable();
                categories.Fill(dt);              
                categoryList.DataSource = dt;
                categoryList.DataBind();            
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
                dl_product.DataSource = read;
                dl_product.DataBind();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }

        private void DeleteProduct()
        {
            try
            {
                id = Request.QueryString["id"];
                islem = Request.QueryString["islem"];
                var ID = Convert.ToInt64(id);

                if (islem == "delete")
                {
                    var cmdDelete = new OleDbCommand();
                    cmdDelete.Connection = connection.OleDBConnection();
                    cmdDelete.CommandText = "Delete from Products Where ID=@ID ";
                    cmdDelete.Parameters.AddWithValue("@ID", ID);
                    cmdDelete.ExecuteNonQuery();
                    connection.OleDBConnection().Close();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ürün başarı ile silindi.')", true);
                }
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }

        protected void btn_productadd_Click(object sender, EventArgs e)
        {
            try
            {
                if (product_photo.HasFile)
                {
                    string fileExt = System.IO.Path.GetExtension(product_photo.FileName);

                    if (fileExt == ".jpeg" || fileExt == ".jpg" || fileExt == ".png" || fileExt == ".PNG")
                    {
                        product_photo.SaveAs(Server.MapPath("/image/") + product_photo.FileName);

                        var cmd = new OleDbCommand("insert into Products (ImageUrl,Name,Price,StockNumber,CategoryID) " +
                            "values ('image/" + product_photo.FileName + "','" + name.Text + "','" + price.Text + "','" + quantity.Text + "','" + categoryList.SelectedValue + "' )", connection.OleDBConnection());


                        cmd.ExecuteNonQuery();

                        Panel1.Visible = true;
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sadece Resim Dosyası Ekleyiniz...')", true);
                    }
                }
                else
                {
                    Panel2.Visible = true;
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }

        protected void btn_clean_Click(object sender, EventArgs e)
        {
            price.Text = "";
            name.Text = "";
            quantity.Text = "";

            GetProducts();
        }
    }
}
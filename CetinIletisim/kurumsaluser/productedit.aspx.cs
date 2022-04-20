using System;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;

namespace CetinIletisim.kurumsaluser
{
    public partial class productedit : System.Web.UI.Page
    {
        string id = "";
        DatabaseConnection connection = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("default.aspx");
            }

            if (Page.IsPostBack == false)
            {
                GetProduct();
                GetCategories();
            }
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

        private void GetProduct()
        {
            try
            {
                id = Request.QueryString["id"];

                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from Products Where ID=@id ";
                cmd.Parameters.AddWithValue("@id", Convert.ToInt64(id));
                var read = cmd.ExecuteReader();

                if (read.Read())
                {
                    var catId = read["CategoryID"].ToString();
                    var catName = GetCategory(catId);

                    price.Text = read["Price"].ToString();
                    name.Text = read["Name"].ToString();
                    quantity.Text = read["StockNumber"].ToString();
                    image.ImageUrl = "../" + read["ImageUrl"].ToString();
                    categoryName.Text = catName;
                    categoryID.Text = catId;
                }

                connection.OleDBConnection().Close();
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }

        private string GetCategory(string catID)
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from ProductCategories Where ID=@id ";
                cmd.Parameters.AddWithValue("@id", Convert.ToInt64(catID));
                var read = cmd.ExecuteReader();
                if (read.Read())
                {
                    return read["CategoryName"].ToString();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
            return null;
        }

        protected void btn_productedit_Click(object sender, EventArgs e)
        {
            try
            {
                id = Request.QueryString["id"];
                var idProduct = Convert.ToInt64(id);

                if (photo.HasFile)
                {
                    string fileExt = System.IO.Path.GetExtension(photo.FileName);

                    if (fileExt == ".jpeg" || fileExt == ".jpg" || fileExt == ".png" || fileExt == ".PNG")
                    {
                        photo.SaveAs(Server.MapPath("/image/" + photo.FileName));
                    }

                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sadece Resim Dosyası Ekleyiniz...')", true);
                    }
                }

                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "UPDATE Products Set ImageUrl = @ImageUrl, Name = @Name, Price=@Price, StockNumber = @StockNumber, CategoryID =@CategoryID Where ID=@id";

                cmd.Parameters.AddWithValue("@id", idProduct);
                cmd.Parameters.AddWithValue("@ImageUrl", photo.HasFile ? "image/" + photo.FileName + "'" : image.ImageUrl.ToString());
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDouble(price.Text));
                cmd.Parameters.AddWithValue("@StockNumber", Convert.ToInt32(quantity.Text));
                cmd.Parameters.AddWithValue("@CategoryID", categoryList.SelectedIndex != 0 ? Convert.ToInt64(categoryList.SelectedValue) : Convert.ToInt64(categoryID.Text));

                cmd.ExecuteNonQuery();
                Response.Redirect("product.aspx", false);
                connection.OleDBConnection().Close();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }
    }
}
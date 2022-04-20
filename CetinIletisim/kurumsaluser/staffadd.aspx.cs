using System;
using System.Data.OleDb;
using System.Web.UI;

namespace CetinIletisim.kurumsaluser
{
    public partial class staffadd : System.Web.UI.Page
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

            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            DeleteStaff();
            GetStaff();
        }

        private void DeleteStaff()
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
                    cmdDelete.CommandText = "Delete from UsersAndRoles Where ID=@ID ";
                    cmdDelete.Parameters.AddWithValue("@ID", ID);
                    cmdDelete.ExecuteNonQuery();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kullanıcı başarı ile silindi.')", true);
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }

        private void GetStaff()
        {
            try
            {
                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from UsersAndRoles Where Roles=@roles ";
                cmd.Parameters.AddWithValue("@roles", "3");
                var read = cmd.ExecuteReader();
                dl_staff.DataSource = read;
                dl_staff.DataBind();
            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }

            connection.OleDBConnection().Close();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {
                if (username.Text != string.Empty && firstname.Text != string.Empty && lastname.Text != string.Empty && password.Text != string.Empty)
                {
                    var cmdAdd = new OleDbCommand(" INSERT INTO UsersAndRoles (FirstName,LastName,UserName,[Password],Roles) " +
                                                   "values('" + firstname.Text + "','" + lastname.Text + "','" + username.Text + "','" + password.Text + "', 3)", connection.OleDBConnection());

                    cmdAdd.ExecuteNonQuery();
                    pnl_gdogru.Visible = true;
                    connection.OleDBConnection().Close();
                }

                else
                {
                    pnl_gyanlis.Visible = true;
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }

        protected void btn_clean_Click(object sender, EventArgs e)
        {
            username.Text = "";
            firstname.Text = "";
            lastname.Text = "";
            password.Text = "";

            GetStaff();
        }
    }
}
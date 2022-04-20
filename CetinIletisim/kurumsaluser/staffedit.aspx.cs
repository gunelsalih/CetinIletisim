using System;
using System.Data.OleDb;
using System.Web.UI;

namespace CetinIletisim.kurumsaluser
{
    public partial class bankaduzen : Page
    {
        string id = "";
        DatabaseConnection connection = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            if (Session["user"] == null)
            {
                Response.Redirect("default.aspx");
            }

            if (Page.IsPostBack == false)
            {
                GetStaff();
            }
        }

        private void GetStaff()
        {
            try
            {
                id = Request.QueryString["id"];

                var cmd = new OleDbCommand();
                cmd.Connection = connection.OleDBConnection();
                cmd.CommandText = "Select * from UsersAndRoles Where ID=@id ";
                cmd.Parameters.AddWithValue("@id", Convert.ToInt64(id));
                var read = cmd.ExecuteReader();

                if (read.Read())
                {
                    firstname.Text = read["FirstName"].ToString();
                    lastname.Text = read["LastName"].ToString();
                    username.Text = read["UserName"].ToString();
                    password.Text = read["Password"].ToString();
                }
                connection.OleDBConnection().Close();
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            try
            {
                if (firstname.Text != string.Empty && lastname.Text != string.Empty && username.Text != string.Empty && password.Text != string.Empty)
                {
                    id = Request.QueryString["id"];

                    var cmd = new OleDbCommand();
                    cmd.Connection = connection.OleDBConnection();
                    cmd.CommandText = "UPDATE UsersAndRoles Set FirstName = @FirstName, LastName = @LastName, UserName=@UserName, [Password] = @Password Where ID=@id ";
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt64(id));
                    cmd.Parameters.AddWithValue("@FirstName", firstname.Text);
                    cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                    cmd.Parameters.AddWithValue("@UserName", username.Text);
                    cmd.Parameters.AddWithValue("@Password", password.Text);

                    cmd.ExecuteNonQuery();
                    pnl_gdogru.Visible = true;
                    Response.Redirect("staffadd.aspx");

                    connection.OleDBConnection().Close();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu lütfen daha sonra tekrar deneyiniz.')", true);
            }
        }
    }
}
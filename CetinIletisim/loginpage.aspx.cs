using System;
using System.Data.OleDb;
using System.Web.UI;

namespace CetinIletisim
{
    public partial class loginpage : System.Web.UI.Page
    {
        DatabaseConnection con = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                lbl_username.Text = Session["user"].ToString();
                btn_login.Visible = false;
                btn_signup.Visible = false;
                btn_basket.Visible = true;
                drpdown_username.Style.Add("Visibility", "true");
            }

            if (Session["quantity"] != null)
            {
                btn_basket.Text = "Sepet(" + Session["quantity"].ToString() + ")";
            }
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            if (username.Text == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen kullanıcı adınızı boş bırakmadığınızdan emin olun')", true);
            }

            if (password.Text == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen parolanızı boş bırakmadığınızdan emin olun')", true);
            }

            if (username.Text != null && password.Text != null)
            {
                var cmd = new OleDbCommand("SELECT UserName,Password,Roles FROM UsersAndRoles WHERE UserName= '" + username.Text + "' " +
                                                     "AND Password ='" + password.Text + "'", con.OleDBConnection());
                var readUsers = cmd.ExecuteReader();

                if (!readUsers.HasRows)
                {
                    cmd.Dispose();
                    var cmdCustomers = new OleDbCommand("SELECT UserName,Password FROM Customers WHERE UserName= '" + username.Text + "' " +
                                                     "AND Password ='" + password.Text + "'", con.OleDBConnection());

                    var readCustomers = cmdCustomers.ExecuteReader();

                    if (readCustomers.HasRows)
                    {
                        Session.Add("user", username.Text);
                        Response.Redirect("product.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen kullanıcı adınız veya parolanızı doğru yazdığınızdan emin olun')", true);
                    }
                }
                else if (readUsers.Read())
                {
                    Session.Add("user", username.Text);
                    Session.Add("role", readUsers.GetString(2));
                    Response.Redirect("kurumsaluser/stockcontrol.aspx");
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen kullanıcı adınız veya parolanızı doğru yazdığınızdan emin olun')", true);
                }

                con.OleDBConnection().Close();
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("default.aspx");
        }
    }
}
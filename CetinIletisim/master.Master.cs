using System;

namespace CetinIletisim
{
    public partial class master : System.Web.UI.MasterPage
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
                drpdown_username.Style.Add("Visibility","true");

                if(Session["quantity"] != null)
                {
                    btn_basket.Text = "Sepet(" + Session["quantity"].ToString() + ")";
                }
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("default.aspx");
        }
    }
}
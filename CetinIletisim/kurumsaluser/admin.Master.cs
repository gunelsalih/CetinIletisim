using System;

namespace CetinIletisim.kurumsaluser
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null && Session["role"] != null)
            {
                lbl_username.Text = Session["user"].ToString();
                lbl_username2.Text = Session["user"].ToString();
                lbl_username3.Text = Session["user"].ToString();

                if (Session["role"].ToString() == "3")
                {
                    addstaff.Style.Add("Visibility", "hidden");
                    productedit.Style.Add("Visibility", "hidden");
                    message.Style.Add("Visibility", "hidden");
                }
            }
        }
    }
}
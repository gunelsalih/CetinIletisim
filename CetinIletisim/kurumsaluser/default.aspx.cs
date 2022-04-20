using System;
using System.Data.OleDb;

namespace CetinIletisim.kurumsaluser
{
    public partial class _default : System.Web.UI.Page
    {
        DatabaseConnection connection = new DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_ddogru.Visible = false;
            pnl_dyanlis.Visible = false;
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            var cmd = new OleDbCommand("SELECT UserName,Password,Roles FROM UsersAndRoles WHERE UserName= '" + txtAd.Text + "'" +
                                       "AND Password='" + txtParola.Text + "'", connection.OleDBConnection());

            var read = cmd.ExecuteReader();

            if (read.Read())
            {
                pnl_ddogru.Visible = true;
                Session.Add("user", txtAd.Text);
                Session.Add("role", read.GetString(2));
                Response.Redirect("staffadd.aspx");
            }

            else
            {
                pnl_dyanlis.Visible = true;
            }
           
            connection.OleDBConnection().Close();
        }
    }
}
using System;
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Web.UI;

namespace CetinIletisim
{
    public partial class signuppage : System.Web.UI.Page
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

            if (!Page.IsPostBack)
            {
                SecurityCodeGenerate();
            }
        }
        protected void signupBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtSecurityCode.Text == Session["securitycode"].ToString())
                {
                    if (username.Text != string.Empty && password.Text != string.Empty && email.Text != string.Empty && firstname.Text != string.Empty && lastname.Text != string.Empty)
                    {
                        try
                        {
                            OleDbCommand cmd = new OleDbCommand("INSERT INTO Customers (FirstName,LastName,UserName,[Password],Email) " +
                                                                "Values ('" + firstname.Text + "','" + lastname.Text + "','"
                                                                            + username.Text + "','" + password.Text + "','"
                                                                            + email.Text + "')", con.OleDBConnection());
                            cmd.ExecuteNonQuery();
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('üyeliğiniz Başarıyla Bize Ulaşmıştır...')", true);

                            con.OleDBConnection().Close();

                            Response.Redirect("login.aspx");
                        }

                        catch (OleDbException)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Üyelik sırasında bir hata oluştu.')", true);
                            SecurityCodeGenerate();
                        }
                    }

                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bütün Alanları Doldurduğunuzdan Emin Olun...')", true);
                        SecurityCodeGenerate();
                    }
                }

                else
                {
                    //Doğrulama kodu yanlışsa çalıştırılacak kodlar
                    lblMesaj.Visible = true;
                    lblMesaj.Text = "Doğrulama Kodu Yanlış!";
                    txtSecurityCode.Text = "";
                    //Kullanıcının girdiği kod yanlışsa yeni bir resim ve session oluşturulur.
                    SecurityCodeGenerate();
                }

            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir Hata Oluştu Lütfen Tekrar Deneyiniz...')", true);
                SecurityCodeGenerate();
                txtSecurityCode.Text = "";
            }
        }

        public void SecurityCodeGenerate()
        {
            string code = "";
            code = RandomDataGenerate();
            //Üretilen kodu Session nesnesine aktarır.
            Session.Add("securitycode", code);
            //Rastgele üretilen metini alıp resme dönüştürelim.
            //boş bir resim dosyası oluştur.
            Bitmap bmp = new Bitmap(100, 27);
            //Graphics sınıfı ile resmin kontrolunu alır.
            Graphics g = Graphics.FromImage(bmp);
            //DrawString 20‘ye 0 kordinatına kodu‘u yazdırır.
            g.DrawString(code, new Font("Comic Sanns MS", 16), new SolidBrush(Color.White), 10, 0);
            //Resmi binary olarak alıp sayfaya yazdırmak ıcın MemoryStream kullandık.
            MemoryStream ms = new MemoryStream();
            bmp.Save(ms, ImageFormat.Png);
            var base64Data = Convert.ToBase64String(ms.ToArray());
            imgCode.ImageUrl = "data:image/png;base64," + base64Data;
            g.Dispose();
            bmp.Dispose();
            ms.Close();
            ms.Dispose();
        }

        public string RandomDataGenerate()
        {
            string vallue = "";
            //Türkçe karakterleri kullanmaktan vazgeçtim.
            string turkishChar = "ABCDEFGHIJKLMNOPRSTUVYZ0123456789";
            Random r = new Random();
            //Toplam 6 karakterden oluşan rastgele bir metin oluşturalım.
            for (int i = 0; i < 5; i++)
            {
                vallue = vallue + turkishChar[r.Next(0, 33)];
            }
            return vallue;
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("default.aspx");
        }
    }
}
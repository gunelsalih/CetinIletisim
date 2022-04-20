using System;
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Web.UI;

namespace CetinIletisim
{
    public partial class contactpage : System.Web.UI.Page
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

        protected void sendmessage_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_controlcode.Text == Session["securitycode"].ToString())
                {
                    if (name.Text != string.Empty && email.Text != string.Empty && message.Text != string.Empty && phone.Text != string.Empty)
                    {
                        OleDbCommand cmd = new OleDbCommand("INSERT INTO MessagesOfCustomers (NameSurName,Message,Phone,Subject,Email) " +
                                                                "Values ('" + name.Text + "','" + message.Text + "','"
                                                                            + phone.Text + "','" + subject.Text + "','"
                                                                            + email.Text + "')", con.OleDBConnection());                       

                        con.OleDBConnection().Close();

                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('İletiniz Başarıyla Bize Ulaşmıştır...')", true);
                        SecurityCodeGenerate();

                        name.Text = string.Empty;
                        message.Text = string.Empty;
                        phone.Text = string.Empty;
                        subject.Text = string.Empty;
                        email.Text = string.Empty;
                    }

                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bütün Alanları Doldurduğunuzdan Emin Olun...')", true);
                        SecurityCodeGenerate();
                        txt_controlcode.Text = "";
                    }
                }

                else
                {
                    //Doğrulama kodu yanlışsa çalıştırılacak kodlar
                    lbl_message.Visible = true;
                    lbl_message.Text = "Doğrulama Kodu Yanlış!";
                    txt_controlcode.Text = "";
                    //Kullanıcının girdiği kod yanlışsa yeni bir resim ve session oluşturulur.
                    SecurityCodeGenerate();
                }

            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir Hata Oluştu Lütfen Tekrar Deneyiniz...')", true);
                SecurityCodeGenerate();
                txt_controlcode.Text = "";
            }
        }
    }
}
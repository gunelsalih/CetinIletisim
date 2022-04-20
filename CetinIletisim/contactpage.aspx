<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactpage.aspx.cs" Inherits="CetinIletisim.contactpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />

    <title>Çetin İletişim</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!-- Vendor CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="vendor/animate/animate.min.css" />
    <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css" />
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css" />
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="css/theme.css" />
    <link rel="stylesheet" href="css/theme-elements.css" />
    <link rel="stylesheet" href="css/theme-blog.css" />
    <link rel="stylesheet" href="css/theme-shop.css" />

    <!-- Current Page CSS -->
    <link rel="stylesheet" href="vendor/rs-plugin/css/settings.css" />
    <link rel="stylesheet" href="vendor/rs-plugin/css/layers.css" />
    <link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css" />
    <link rel="stylesheet" href="vendor/circle-flip-slideshow/css/component.css" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="css/skins/default.css" />
    <script src="master/style-switcher/style.switcher.localstorage.js"></script>

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="css/custom.css" />

    <!-- Head Libs -->
    <script src="vendor/modernizr/modernizr.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="body">

            <header id="header" data-plugin-options='{"stickyEnabled": true, "stickyEnableOnBoxed": true, "stickyEnableOnMobile": true, "stickyStartAt": 57, "stickySetTop": "-57px", "stickyChangeLogo": true}'>
                <div class="header-body">
                    <div class="header-container container">
                        <div class="header-row">
                            <div class="header-column">
                                <div class="header-logo">
                                    <a href="default.aspx">
                                        <img width="150" height="65" data-sticky-width="82" data-sticky-height="40" data-sticky-top="33" src="img/logo.png" />
                                    </a>
                                </div>
                            </div>
                            <div class="header-column">
                                <div class="header-row">
                                    <div class="header-nav">
                                        <button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
                                            <i class="fa fa-bars"></i>
                                        </button>

                                        <div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
                                            <nav>
                                                <ul class="nav nav-pills" id="mainNav">
                                                    <li>
                                                        <asp:HyperLink ID="btn_default" runat="server" NavigateUrl="~/default.aspx">Ana Sayfa</asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="btn_aboutus" runat="server" NavigateUrl="~/aboutus.aspx">Hakkımızda</asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="btn_product" runat="server" NavigateUrl="~/product.aspx">Ürünler</asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="btn_contact" runat="server" NavigateUrl="~/contactpage.aspx">İletişim</asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="btn_signup" runat="server" NavigateUrl="~/signuppage.aspx">Kayıt Ol</asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="btn_login" runat="server" NavigateUrl="~/loginpage.aspx">Giriş Yap</asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="btn_basket" runat="server" Visible="false" Text="Sepet(0)" NavigateUrl="~/basket.aspx"></asp:HyperLink>
                                                    </li>

                                                    <li class="dropdown user user-menu" runat="server" id="drpdown_username" style="visibility: hidden">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                            <span class="hidden-xs">
                                                                <asp:Label ID="lbl_username" runat="server" Text=""></asp:Label></span>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li class="user-footer">
                                                                <asp:LinkButton ID="btn_logout" runat="server" CssClass="btn btn-default btn-flat" Text="Çıkış Yap" OnClick="btn_logout_Click"></asp:LinkButton>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div role="main" class="main">
                <section class="page-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="breadcrumb">
                                    <li><a href="default.aspx">Ana Sayfa</a></li>
                                    <li class="active">Bİze Ulaşın</li>
                                </ul>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h1>Bize Ulaşın</h1>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
                <div id="googlemaps" class="google-map">

                    <iframe src="https://maps.google.com/maps?q=Fatih%2C%20Erzincan%20Binali%20Y%C4%B1ld%C4%B1r%C4%B1m%20%C3%9Cniversitesi%2C%20726.%20Sk.%2C%20Merkez%2FErzincan%20Merkez%2FErzincan&t=&z=13&ie=UTF8&iwloc=&output=embed" width="1920" height="400" style="border: 0"></iframe>

                </div>

                <div class="container">

                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="mb-sm mt-sm"><strong>Bize</strong> Ulaşın</h2>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Ad Soyad *</label>
                                        <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>

                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">

                                    <div class="col-md-12">
                                        <label>Eposta *</label>
                                        <asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli Bir Mail Adresi Giriniz." ControlToValidate="email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="form-group">

                                    <div class="col-md-12">
                                        <label>Telefon *</label>
                                        <asp:TextBox ID="phone" class="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Geçerli Bir Telefon Numarası Giriniz." ControlToValidate="phone" ForeColor="#CC0000" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Konu</label>
                                        <asp:TextBox ID="subject" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Mesaj *</label>
                                        <asp:TextBox ID="message" class="form-control" TextMode="MultiLine" Height="300px" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <p>
                                            <label for="phone">
                                                Güvenlik Kodu:
                                            </label>
                                            <asp:Image ID="imgCode" runat="server" BackColor="Black" Height="25px" />
                                        </p>
                                        <br />

                                        <p>
                                            <label for="phone">
                                                Güvenlik Kodu Girin:
                                            </label>
                                            <asp:TextBox ID="txt_controlcode" Width="125px" class="form-control" runat="server"></asp:TextBox>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Button ID="sendmessage" class="btn btn-primary btn-lg mb-xlg" runat="server" Text="Gönder" OnClick="sendmessage_Click" />
                                    <asp:Label ID="lbl_message" Visible="false" runat="server" Font-Bold="true" Font-Size="16px" ForeColor="#d73d3d"></asp:Label>
                                </div>
                            </div>

                        </div>


                        <div class="col-md-6">
                            <hr />

                            <h4 class="heading-primary">İletişim <strong>Bilgileri </strong></h4>
                            <ul class="list list-icons list-icons-style-3 mt-xlg">
                                <li><i class="fa fa-map-marker"></i><strong>Adres:</strong><p>Fatih, 726. Sk., 24100 Merkez/Erzincan Merkez/Erzincan</p>
                                </li>
                                <li><i class="fa fa-phone"></i><strong>Telefon Numarası: </strong>
                                    <p>(0446) 224 30 97</p>
                                </li>
                                <li><i class="fa fa-envelope"></i><strong>E-posta Adresi: </strong><a href="#">cetiniletisim@ciletisim.com</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </form>

    <footer id="footer"></footer>


    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery.appear/jquery.appear.min.js"></script>
    <script src="vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="vendor/jquery-cookie/jquery-cookie.min.js"></script>
    <script src="master/style-switcher/style.switcher.js" id="styleSwitcherScript" data-skin-src=""></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/common/common.min.js"></script>
    <script src="vendor/jquery.validation/jquery.validation.min.js"></script>
    <script src="vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
    <script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
    <script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
    <script src="vendor/isotope/jquery.isotope.min.js"></script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="vendor/vide/vide.min.js"></script>

    <!-- Theme Base, Components and Settings -->
    <script src="js/theme.js"></script>

    <!-- Current Page Vendor and Views -->
    <script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
    <script src="js/views/view.home.js"></script>

    <!-- Theme Custom -->
    <script src="js/custom.js"></script>

    <!-- Theme Initialization Files -->
    <script src="js/theme.init.js"></script>

    <script src="master/analytics/analytics.js"></script>
</body>
</html>

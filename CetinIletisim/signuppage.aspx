<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuppage.aspx.cs" Inherits="CetinIletisim.signuppage" %>

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
                                <li class="active">Kayıt Ol</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h1>Kayıt Ol</h1>
                        </div>
                    </div>
                </div>
            </section>

            <div class="container">

                <div class="row">
                    <div class="col-md-4"></div>
                    <div class=" col-md-8">
                        <div class="alert alert-success hidden mt-lg" id="contactSuccess">
                            <strong>Başarı ile Kayıt Oldunuz!</strong>
                        </div>

                        <div class="alert alert-danger hidden mt-lg" id="contactError">
                            <strong>Kayıt Olamadınız!</strong>Lütfen * ile belirtilen tüm alanları kontrol ediniz.
								<span class="font-size-xs mt-sm display-block" id="mailErrorMessage"></span>
                        </div>

                        <h2 class="mb-sm mt-sm"><strong>Kayıt Ol</strong></h2>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Ad *</label>
                                    <asp:TextBox ID="firstname" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Soyad *</label>
                                    <asp:TextBox ID="lastname" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>E posta *</label>
                                    <asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli Bir Mail Adresi Giriniz." ControlToValidate="email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Kullanıcı Adı *</label>
                                    <asp:TextBox ID="username" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Parola *</label>
                                    <asp:TextBox ID="password" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
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
                                        <asp:TextBox ID="txtSecurityCode" Width="125px" class="form-control" runat="server"></asp:TextBox>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6" align="right">
                                <asp:Button ID="signupBtn" class="btn btn-primary btn-lg mb-xlg" runat="server" Text="Kayıt Ol" OnClick="signupBtn_Click" />
                                <asp:Label ID="lblMesaj" runat="server" Font-Bold="true" Font-Size="16px" ForeColor="#d73d3d"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer id="footer">
            </footer>
        </div>
    </form>
</body>
</html>

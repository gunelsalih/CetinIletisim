<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CetinIletisim.kurumsaluser._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Çetin İletişim</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="Shortcut Icon"  href="../image/favicon.ico"  type="image/x-icon"/>
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" />
    <!-- iCheck -->
    <link href="plugins/iCheck/square/blue.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-page">

        <div class="login-box">
            <div class="login-logo">
                <b>Çetin İletişim</b>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Admin Paneline Giriş</p>
                <form method="post" runat="server">
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtAd" CssClass="form-control" placeholder="Kullanıcı Adınız..." runat="server"></asp:TextBox>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtParola" CssClass="form-control" TextMode="Password" placeholder="Parolanız..." runat="server"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <input type="checkbox" />
                                    Beni Hatırla
                                </label>
                            </div>
                        </div>
                        <div class="col-xs-8">
                            <asp:Panel ID="pnl_ddogru" runat="server">
                            <div class="form-group">
                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-check"></i>Girş Yapıldı!</h4>
                                    Başarıyla Giriş Yapıldı...
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnl_dyanlis" runat="server">
                            <div class="form-group">
                                <div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-ban"></i>Hata!</h4>
                                    Dığru Kullanıcı Adı veya Şifre Giriniz...
                                </div>
                            </div>
                        </asp:Panel>
                        </div>
                        <!-- /.col -->
                        <div class="col-xs-4">
                            <asp:Button runat="server" type="submit" ID="btn_giris" CssClass="btn btn-primary btn-block btn-flat" Text="Giriş" OnClick="btn_giris_Click" />
                        </div>
                        <!-- /.col -->
                    </div>
                </form>               
            </div>
            <!-- /.login-box-body -->
        </div>
        <!-- /.login-box -->
        <!-- jQuery 2.1.3 -->
        <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
    </script>
    
</body>
</html>

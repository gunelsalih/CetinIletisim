<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="CetinIletisim.product" EnableEventValidation="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css" />
    <link rel="stylesheet" href="vendor/themify-icons/themify-icons.css" />
    <link rel="stylesheet" href="vendor/linericon/style.css" />
    <link rel="stylesheet" href="vendor/nice-select/nice-select.css" />
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css" />
    <script src="vendor/nice-select/jquery.nice-select.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/jquery.ajaxchimp.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div role="main" class="main">

        <section class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="default.aspx">Ana Sayfa</a></li>
                            <li class="active">Ürünler</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h1>Ürünlerimiz</h1>
                    </div>
                </div>
            </div>
        </section>

        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="sidebar">

                        <div class="input-group input-group-lg">
                            <input class="form-control" placeholder="Search..." name="s" id="s" type="text" />
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-primary btn-lg"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                        <hr />

                        <h4 class="heading-primary">Ürünlerimiz</h4>
                        <asp:Repeater runat="server" ID="rpCat">
                            <ItemTemplate>
                                <ul class="nav nav-list mb-xlg">
                                    <li><a><%#Eval("CategoryName") %></a></li>
                                </ul>
                            </ItemTemplate>

                        </asp:Repeater>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="blog-posts single-post">

                                <article class="post post-large blog-single-post">

                                    <div class="post-content">
                                        <asp:Repeater runat="server" ID="rpProducts">
                                            <ItemTemplate>
                                                <div class="col-md-6">
                                                    <img class="img-responsive" src="<%#Eval("ImageUrl") %>" />
                                                    <br />                                                   
                                                    <strong>Adı: </strong><%#Eval("Name") %>                                                 
                                                    <br />
                                                    <strong>Fiyat: </strong><%#Eval("Price") %>
                                                    <br />
                                                    <strong>Miktar: </strong><%#Eval("StockNumber") %>
                                                    <br />
                                                    <asp:Label ID="productID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>
                                                    
                                                    <asp:TextBox ID="quantity" TextMode="Number" Width="50px" runat="server" CssClass="txt-3d text-xs"></asp:TextBox>
                                                    <asp:Button ID="btn_ekle" runat="server" CssClass="btn-primary btn-3d btn-sm" OnClick="btn_ekle_Click" Text="Ekle" />
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </article>

                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</asp:Content>

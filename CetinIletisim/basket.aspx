<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="basket.aspx.cs" Inherits="CetinIletisim.basket" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div role="main" class="main">

        <section class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="default.aspx">Ana Sayfa</a></li>
                            <li class="active">Sepet</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h1>Ürün Bilgileri</h1>
                    </div>
                </div>
            </div>
        </section>

        <div class="container">

            <div class="row">
                <div class="col-md-9">
                    <div class="blog-posts single-post">
                        <asp:Repeater ID="rpBasket" runat="server">
                            <ItemTemplate>
                                <article class="post post-large blog-single-post">
                                    <div class="post-image">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="img-thumbnail">
                                                    <img class="img-responsive" src="<%#Eval("ImageUrl") %>" style="float: right; width: 330px; height: 180px;" />
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="post-content">
                                                    <br />
                                                    <h2 style="text-transform: uppercase"><a><strong><%#Eval("Name") %></a></strong></h2>
                                                    <br />
                                                    <p style="font-size: 18px"><strong>Fiyat</strong> <%#Eval("Price") %> </p>
                                                    <p style="font-size: 18px"><strong>Sipariş Sayısı:</strong><%#Session["quantity"].ToString()%></p>
                                                    <asp:Button Text="Ödeme Yap" runat="server" ID="btn_odeme" CssClass="btn-primary btn-3d" OnClick="btn_odeme_Click" />
                                                    <asp:Button Text="Sepeti Boşalt" runat="server" ID="btn_sifirla" CssClass="btn-primary btn-3d" OnClick="btn_sifirla_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>

        </div>
</asp:Content>

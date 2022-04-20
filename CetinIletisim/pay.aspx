<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="pay.aspx.cs" Inherits="CetinIletisim.pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div role="main" class="main">
        <section class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="default.aspx">Ana Sayfa</a></li>
                            <li class="active">Ödeme</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h1>Ödeme Yap</h1>
                    </div>
                </div>
            </div>
        </section>

        <div class="container">

            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-8">
                    <h2 class="mb-sm mt-sm"><strong>Ödeme</strong> Yap</h2>

                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>Ad Soyad *</label>
                                <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>

                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">

                            <div class="col-md-6">
                                <label>Kart Numarası *</label>
                                <asp:TextBox ID="cardnumber" class="form-control" TextMode="Number" runat="server"></asp:TextBox>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="form-group">

                            <div class="col-md-6">
                                <label>Son Kullanma Tarihi *</label>
                                <asp:TextBox ID="date" placeholder="gg/aa/YYYY" CssClass="form-control" TextMode="DateTime" runat="server"></asp:TextBox>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>CVC2 *</label>
                                <asp:TextBox ID="cvc" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <asp:Button ID="btn_pay" class="btn btn-primary btn-lg mb-xlg" runat="server" Text="Öde" OnClick="pay_Click" />
                            <asp:Label ID="lbl_message" Visible="false" runat="server" Font-Bold="true" Font-Size="16px" ForeColor="#d73d3d"></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

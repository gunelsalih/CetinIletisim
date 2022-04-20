<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/admin.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="CetinIletisim.kurumsaluser.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1>Ürünler</h1>

    </section>


    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Ürün Ekle</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">

                        <asp:Panel runat="server">
                            <div class="form-group">
                                <div class="alert alert alert-dismissable" style="background-color: lightyellow">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-ban"></i>ÖNEMLİ NOT!!!</h4>
                                    Fotoğraf boyutu 1920 px * 1080 px olmalıdır.
                                </div>
                            </div>
                        </asp:Panel>

                        <div class="form-group">
                            <label for="exampleInputFile">Ürün için Fotoğraf Seç: </label>
                            <asp:FileUpload ID="product_photo" runat="server" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Sadece Resim Dosyası Seçiniz..." ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|PNG|JPG|JPEG)$" ControlToValidate="product_photo"></asp:RegularExpressionValidator>
                            <br />

                        </div>

                        <div class="form-group">
                            <label id="Label4" runat="server">Kategori Seç:</label>
                            <asp:DropDownList AppendDataBoundItems="true" DataTextField="CategoryName" DataValueField="ID" ID="categoryList" runat="server" CssClass="form-control">
                                <asp:ListItem>----Kategori Seç----</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label id="Label5" runat="server">Ürün Adı:</label>
                            <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label id="Label6" runat="server">Ürün Fiyatı:</label>
                            <asp:TextBox ID="price"  TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label id="Label7" runat="server">Ürün Adeti:</label>
                            <asp:TextBox ID="quantity" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="btn_productadd" runat="server" CssClass="btn btn-block btn-primary" Text="KAYDET" OnClick="btn_productadd_Click" />
                            <asp:Button ID="btn_clean" runat="server" CssClass="btn btn-block btn-danger" Text="GÖSTER" OnClick="btn_clean_Click" />
                        </div>

                        <asp:Panel ID="Panel1" runat="server">
                            <div class="form-group">
                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-check"></i>Eklendi!</h4>
                                    Başarıyla Eklendi...
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">
                            <div class="form-group">
                                <div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-ban"></i>Hata!</h4>
                                    Bir Sorun Çıktı Boşlukları Doldurun Lütfen...
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Ürün Düzenle</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box">
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Fotoğraf</th>
                                            <th>Kategori ID</th>
                                            <th>Ürün Adı</th>
                                            <th>Fiyat</th>
                                            <th>Miktar</th>
                                            <th>Güncelle</th>

                                            <th>Sil</th>
                                        </tr>
                                        <asp:Repeater ID="dl_product" runat="server">
                                            <ItemTemplate>
                                                <tr>


                                                    <td>
                                                        <asp:Label runat="server" ID="AlbumAdi" Text='<%#Eval("ImageUrl") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Label1" Text='<%#Eval("CategoryID") %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label runat="server" ID="Label2" Text='<%#Eval("Name") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Label3" Text='<%#Eval("Price") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Label8" Text='<%#Eval("StockNumber") %>'></asp:Label>
                                                    </td>

                                                    <td><a href='productedit.aspx?id=<%#Eval("ID") %>'><i class="fa fa-pencil"></i></a></td>
                                                    <td><a href='product.aspx?id=<%#Eval("ID") %>&islem=delete'><i class="fa fa-trash-o"></i></a></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>

    </section>


</asp:Content>

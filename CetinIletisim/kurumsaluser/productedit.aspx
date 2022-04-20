<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/admin.Master" AutoEventWireup="true" CodeBehind="productedit.aspx.cs" Inherits="CetinIletisim.kurumsaluser.productedit" %>
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
                        <h3 class="box-title">Ürün Düzenle</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">

                       <div class="form-group">
                            <label id="Label1" runat="server">Fotoğraf:</label>
                           <asp:Image Width="200px" Height="200px" runat="server" ID="image"/>
                        </div>

                       <div class="form-group">
                            <label for="exampleInputFile">Ürün için Fotoğraf Seç: </label>
                            <asp:FileUpload ID="photo" runat="server" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Sadece Resim Dosyası Seçiniz..." ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|PNG|JPG|JPEG)$" ControlToValidate="photo"></asp:RegularExpressionValidator>
                            <br />

                        </div>

                           <div class="form-group">
                            <label id="Label2" runat="server">Kategori Adı:</label>
                            <asp:TextBox ID="categoryName" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                            <asp:TextBox ID="categoryID" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="price" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label id="Label7" runat="server">Ürün Adeti:</label>
                            <asp:TextBox ID="quantity" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="btn_productedit" runat="server" CssClass="btn btn-block btn-primary" Text="KAYDET" OnClick="btn_productedit_Click" />
                        </div>
                      
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
          </section>
</asp:Content>

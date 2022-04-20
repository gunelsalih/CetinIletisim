<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/admin.Master" AutoEventWireup="true" CodeBehind="stockcontrol.aspx.cs" Inherits="CetinIletisim.kurumsaluser.stockcontrol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1>Stok Kontrol</h1>

    </section>


    <section class="content">

        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Stok Kontrol</h3>
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
                                        </tr>
                                        <asp:Repeater ID="dl_product" runat="server">
                                            <ItemTemplate>
                                                <tr>

                                                    <td>                                                        
                                                        <asp:Image Width="100px" Height ="100px" runat="server" ID="AlbumAdi" ImageUrl='<%# String.Format("{0}{1}","../", DataBinder.Eval(Container.DataItem, "ImageUrl")) %>'></asp:Image>
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

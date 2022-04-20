<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/admin.Master" AutoEventWireup="true" CodeBehind="staffadd.aspx.cs" Inherits="CetinIletisim.kurumsaluser.staffadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1>Personel Düzenleme</h1>

    </section>


    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Personel Ekle</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">

                        <div class="form-group">
                            <label id="Label4" runat="server">Personel Ad:</label>
                            <asp:TextBox ID="firstname" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label id="Label5" runat="server">Personel Soyad:</label>
                            <asp:TextBox ID="lastname" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label id="Label9" runat="server">Kullanıcı Adı:</label>
                            <asp:TextBox ID="username" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label id="Label3" runat="server">Parola:</label>
                            <asp:TextBox ID="password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="btn_add" runat="server" CssClass="btn btn-block btn-primary" Text="KAYDET" OnClick="btn_add_Click" />
                            <asp:Button ID="btn_clean" runat="server" CssClass="btn btn-block btn-danger" Text="GÖSTER" OnClick="btn_clean_Click" />

                        </div>
                        <asp:Panel ID="pnl_gdogru" runat="server">
                            <div class="form-group">
                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-check"></i>Eklendi!</h4>
                                    Başarıyla Eklendi...
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnl_gyanlis" runat="server">
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
                        <h3 class="box-title">Personel Düzenle</h3>
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
                                            <th>Personel Ad</th>
                                            <th>Personel Soyad</th>
                                            <th>Kullanıcı Adı</th>
                                            <th>Parola</th>

                                            <th>Güncelle</th>

                                            <th>Sil</th>
                                        </tr>
                                        <asp:Repeater ID="dl_staff" runat="server">
                                            <ItemTemplate>
                                                <tr>


                                                    <td>
                                                        <asp:Label runat="server" ID="FirstName" Text='<%#Eval("FirstName") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="LastName" Text='<%#Eval("LastName") %>'></asp:Label>
                                                    </td>


                                                    <td>
                                                        <asp:Label runat="server" ID="UserName" Text='<%#Eval("UserName") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Password" Text='<%#Eval("Password") %>'></asp:Label>
                                                    </td>
                                                    

                                                    <td><a href='staffedit.aspx?id=<%#Eval("id") %>'><i class="fa fa-pencil"></i></a></td>
                                                    <td><a href='staffadd.aspx?id=<%#Eval("id") %>&islem=delete'><i class="fa fa-trash-o"></i></a></td>
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

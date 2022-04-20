<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/admin.Master" AutoEventWireup="true" CodeBehind="messages.aspx.cs" Inherits="CetinIletisim.kurumsaluser.messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="content-header">
        <h1>Mesaj Görüntüleme</h1>
        
    </section>

      <section class="content">
          <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Mesajlar</h3>
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
                                            <th>NameSurName</th>
                                            <th>Email</th>
                                            <th>Phone</th>                                          
                                            <th>Subject</th>
                                            <th>Message</th>
                                           
                                        </tr>
                                        <asp:Repeater ID="dl_messages" runat="server">
                                            <ItemTemplate>
                                                <tr>

                                                    <td>
                                                        <asp:Label runat="server"  Text='<%#Eval("NameSurName") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Label1" Text='<%#Eval("Email") %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label runat="server" ID="Label2" Text='<%#Eval("Phone") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Label3" Text='<%#Eval("Subject") %>'></asp:Label>
                                                    </td>

                                                    <td>
                                                        <asp:Label runat="server" ID="Label8" Text='<%#Eval("Message") %>'></asp:Label>
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

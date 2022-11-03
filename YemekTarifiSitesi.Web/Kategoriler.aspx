<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSitesi.Web.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #00FFFF;
        }
        .auto-style6 {
            height: 23px;
            text-align: left;
            width: 144px;
        }
        .auto-style8 {
            text-align: right;
            height: 23px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            text-align: right;
            height: 23px;
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" CssClass="auto-style5">
        KATEGORİ LİSTESİ</asp:Panel>
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcon/update.png" Width="30px" />
                        </td>
                        <td class="auto-style8">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcon/delete.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

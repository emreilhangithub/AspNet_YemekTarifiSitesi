<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.Web.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">KATEGORİ ADI =</td>
            <td>
                <asp:TextBox ID="TxtKategoriAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">ADET =</td>
            <td>
                <asp:TextBox ID="TxtKategoriAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">RESİM =</td>
            <td>
                <asp:FileUpload ID="FuResim" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="AspNet_YemekTarifiSitesi.Web.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 23px;
            width: 307px;
        }
    .auto-style7 {
        height: 22px;
            width: 307px;
        }
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        height: 22px;
        text-align: right;
    }
    .auto-style10 {
        height: 23px;
        text-align: right;
    }
    .auto-style11 {
        font-size: x-large;
        color: #000000;
    }
        .auto-style12 {
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style11" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Ad Soyad:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Konu:</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Mesaj:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style12"><strong>
            <asp:Button ID="BtnGonder" runat="server" CssClass="tb5" Text="Gönder" Width="230px" OnClick="BtnGonder_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

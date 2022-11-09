<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSitesi.Web.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            height: 26px;
            text-align: right;
        }
        .auto-style8 {
            font-weight: bold;
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
            <td class="auto-style6"><strong>Ad Soyad =</strong></td>
            <td>
                <asp:TextBox ID="TxtYorumAdSoyad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresi =</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtYorumMail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>İçerik =</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtYorumIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek =</strong></td>
            <td>
                <asp:TextBox ID="TxtYorumYemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style8" Text="Onayla" Width="250px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

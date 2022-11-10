<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.Web.YemekDuzenle" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }

        .auto-style6 {
            text-align: right;
            height: 22px;
        }

        .auto-style7 {
            height: 22px;
        }

        .auto-style8 {
            text-align: right;
            height: 110px;
        }

        .auto-style9 {
            height: 110px;
        }

        .auto-style10 {
            text-align: left;
        }

        .auto-style11 {
            font-weight: bold;
            font-size: large;
            background-color: #0066FF;
        }

        .auto-style12 {
            font-weight: bold;
            font-size: large;
            background-color: #66FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>YEMEK ADI =</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>MALZEMELER =</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtYemekMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>TARİF =</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtYemekTarifi" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>KATEGORİ =</strong></td>
            <td class="auto-style7">
                <asp:DropDownList ID="DdlKategori" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <strong>
                    <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" OnClick="BtnGuncelle_Click" CssClass="auto-style11" Width="250px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <strong>
                    <asp:Button ID="BtnGununYemegiSec" runat="server" Text="Günün Yemeği Seç" CssClass="auto-style12" Width="250px" OnClick="BtnGununYemegiSec_Click" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

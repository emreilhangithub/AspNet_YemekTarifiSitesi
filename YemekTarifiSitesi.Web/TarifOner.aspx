<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSitesi.Web.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style6 {
            text-align: right;
            font-weight: bold;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad =</td>
            <td>
                <asp:TextBox ID="TxtTarihAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Malzemeler =</td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yapılış =</td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim =</td>
            <td>
                <asp:FileUpload ID="FileUploadResim" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Öneren =</td>
            <td>
                <asp:TextBox ID="TxtTarihOneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mail Adresi =</td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnTarif" runat="server" BackColor="#FFFFCC" Height="40px" style="font-weight: 700; font-style: italic; margin-left: 26px" Text="Tarif Öner" Width="182px" />
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSitesi.Web.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style8 {
            text-align: right;
            width: 122px;
        }
        .auto-style9 {
            text-align: right;
            width: 122px;
            height: 30px;
        }
        .auto-style10 {
            height: 30px;
        }
        .auto-style11 {
            width: 100%;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style5">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifMalzemeler" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yapaılış:</strong></td>
            <td>
                <asp:TextBox ID="TxtYapalis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Tarif Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FuTarifResim" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Öneren Mail:</strong></td>
            <td>
                <asp:TextBox ID="TxtOnerenMail" runat="server" Width="200px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DdlKategori" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnOnayla" runat="server" Text="Onayla" CssClass="auto-style11" Width="200px" OnClick="BtnOnayla_Click" />
                </strong></td>
        </tr>
    </table>

</asp:Content>

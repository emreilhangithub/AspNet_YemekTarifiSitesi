<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSitesi.Web.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblYemekAdi" runat="server" style="font-size: xx-large; color: #FFFFFF;" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server" Width="444px">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>' style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label5" runat="server" style="font-size: small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

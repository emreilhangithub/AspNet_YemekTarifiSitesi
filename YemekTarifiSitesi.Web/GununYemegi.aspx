<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSitesi.Web.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="441px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("GununYemegiAd") %>' style="font-weight: 700; font-size: x-large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Malzemeler =</strong>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <strong>Tarif =</strong>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        
                        <asp:Image ID="Image1" runat="server" Height="141px" Width="332px" ImageUrl="~/Resimler/mucver-ytk-site.jpg" />
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: left"><strong>Puan =</strong>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                    &nbsp;- </td>
                                <td style="text-align: right"><strong>Eklenme Tarihi&nbsp; = </strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </ItemTemplate>
    </asp:DataList>
</asp:Content>

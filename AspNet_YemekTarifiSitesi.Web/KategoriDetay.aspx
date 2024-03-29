﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="AspNet_YemekTarifiSitesi.Web.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td style="background-color: #FFFF99; color: #FFFFFF;"><a href="YemekDetay.aspx?Yemekid=<%# Eval("YemekId") %>">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' Style="color: #CC0099; font-weight: 700"></asp:Label>
                        </a></td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Malzemeler =</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Yemek Tarifi =</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Eklenme Tarihi =</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' Style="color: #FFFFFF"></asp:Label>
                            &nbsp;- <strong>Puan =
                            <asp:Label ID="Label7" runat="server" Style="color: #FFFFFF" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

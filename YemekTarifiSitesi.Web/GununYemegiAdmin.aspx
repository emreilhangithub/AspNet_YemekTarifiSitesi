<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSitesi.Web.GununYemegiDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
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

        .auto-style11 {
            width: 37px;
        }

        .auto-style12 {
            width: 44px;
        }

        .auto-style13 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style14 {
            width: 37px;
            height: 34px;
        }

        .auto-style15 {
            width: 44px;
            height: 34px;
        }

        .auto-style16 {
            height: 34px;
        }

        .auto-style17 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style18 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #CCCCCC;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button3_Click"/>
                </strong></td>
                <td class="auto-style16">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDuzenle.aspx?YemekId=<%# Eval("YemekId") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcon/check.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

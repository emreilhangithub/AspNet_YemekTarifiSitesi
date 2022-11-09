<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSitesi.Web.Yemekler" %>

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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button3_Click" />
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
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcon/update.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                            <a href="Yemekler.aspx?YemekId=<%# Eval("YemekId") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcon/delete.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="background-color: #CCCCCC;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>YEMEK EKLE</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK AD =</td>
                <td>
                    <asp:TextBox ID="TxtYemekAd" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER =</td>
                <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>TARİF =</td>
                <td>
                    <asp:TextBox ID="TxtTarif" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ =</td>
                <td>
                    <asp:DropDownList ID="DdlKategori" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="BtnYemekEkle" runat="server" CssClass="auto-style17" Text="Ekle" Width="100px" OnClick="BtnYemekEkle_Click" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSitesi.Web.Yorumlar" %>
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
            background-color: #FF0000;
        }
        .auto-style18 {
            height: 34px;
            background-color: #00FF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style18">ONAYLANAN YORUMLARIN LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YorumDetay.aspx?YorumId=<%# Eval("YorumId") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcon/update.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                            <a href="Yorumlar.aspx?YorumId=<%# Eval("YorumId") %>&islem=sil"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcon/delete.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style16">ONAYSIZ YORUMLARIN LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YorumDetay.aspx?YorumId=<%# Eval("YorumId") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcon/update.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                            <a href="Yorumlar.aspx?YorumId=<%# Eval("YorumId") %>&islem=sil"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcon/delete.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSitesi.Web.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">


        .auto-style14 {
            width: 37px;
            height: 34px;
        }

        .auto-style13 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style15 {
            width: 44px;
            height: 34px;
        }

        .auto-style16 {
            height: 34px;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            font-size: medium;
            font-weight: bold;
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
                <td class="auto-style16">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:TextBox ID="TxtMetin" runat="server" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"><strong><em>
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style18" Text="Güncelle" Width="200px" OnClick="BtnGuncelle_Click" />
                    </em></strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

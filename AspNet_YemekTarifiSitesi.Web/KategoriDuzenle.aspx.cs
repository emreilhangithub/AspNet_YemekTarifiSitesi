using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNet_YemekTarifiSitesi.Web
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string KategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriId = Request.QueryString["KategoriId"];

            if (Page.IsPostBack == false) //Sayfaya bu verileri bir kere yükler
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler WHERE KategoriId = @KategoriId", bgl.baglanti());
                komut.Parameters.AddWithValue("@KategoriId", KategoriId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtKategoriAd.Text = dr[1].ToString();
                    TxtKategoriAdet.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAd = @KategoriAd, KategoriAdet=@KategoriAdet WHERE KategoriId = @KategoriId", bgl.baglanti());
            komut.Parameters.AddWithValue("@KategoriAd", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@KategoriAdet", TxtKategoriAdet.Text);
            komut.Parameters.AddWithValue("@KategoriId", KategoriId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
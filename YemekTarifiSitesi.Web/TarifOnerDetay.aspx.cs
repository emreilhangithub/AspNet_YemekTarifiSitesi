using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string TarifId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            TarifId = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Tarifler WHERE TarifId = @TarifId", bgl.baglanti());
                komut.Parameters.AddWithValue("@TarifId", TarifId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtTarifAd.Text = dr[1].ToString();
                    TxtTarifMalzemeler.Text = dr[2].ToString();
                    TxtYapalis.Text = dr[3].ToString();
                    TxtTarifOneren.Text = dr[5].ToString();
                    TxtOnerenMail.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DdlKategori.DataTextField = "KategoriAd";
                DdlKategori.DataValueField = "KategoriId";
                DdlKategori.DataSource = dr2;
                DdlKategori.DataBind();

            }

        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            // Durum Güncelle
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Tarifler SET TarifDurum = 1 WHERE TarifId = @TarifId", bgl.baglanti());
            komut.Parameters.AddWithValue("@TarifId", TarifId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Anasayfaya Ekle
            SqlCommand komut2 = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarifi,KategoriId) VALUES (@YemekAd,@YemekMalzeme,@YemekTarifi,@KategoriId)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@YemekAd", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@YemekMalzeme", TxtTarifMalzemeler.Text);
            komut2.Parameters.AddWithValue("@YemekTarifi", TxtYapalis.Text);
            komut2.Parameters.AddWithValue("@KategoriId", DdlKategori.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut3 = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAdet = KategoriAdet + 1 WHERE KategoriId=@KategoriId", bgl.baglanti());
            komut3.Parameters.AddWithValue("@KategoriId", DdlKategori.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}
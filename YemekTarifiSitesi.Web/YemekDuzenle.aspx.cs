using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string YemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            YemekId = Request.QueryString["YemekId"];

            if (Page.IsPostBack == false) //Sayfaya bu verileri bir kere yükler
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekId = @YemekId", bgl.baglanti());
                komut.Parameters.AddWithValue("@YemekId", YemekId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtYemekAd.Text = dr[1].ToString();
                    TxtYemekMalzeme.Text = dr[2].ToString();
                    TxtYemekTarifi.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();


                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DdlKategori.DataTextField = "KategoriAd";
                    DdlKategori.DataValueField = "KategoriId";

                    DdlKategori.DataSource = dr2;
                    DdlKategori.DataBind();
                }


            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemekler SET YemekAd = @YemekAd, YemekMalzeme=@YemekMalzeme, YemekTarifi=@YemekTarifi, KategoriId=@KategoriId WHERE YemekId = @YemekId", bgl.baglanti());
            komut.Parameters.AddWithValue("@YemekAd", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@YemekMalzeme", TxtYemekMalzeme.Text);
            komut.Parameters.AddWithValue("@YemekTarifi", TxtYemekTarifi.Text);
            komut.Parameters.AddWithValue("@KategoriId", DdlKategori.SelectedValue);
            komut.Parameters.AddWithValue("@YemekId", YemekId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void BtnGununYemegiSec_Click(object sender, EventArgs e)
        {
            //Tüm yemekleri false yaptık
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemekler SET Durum = 0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Sadece seçilen yemeği günün yemeği yaptık
            SqlCommand komut2 = new SqlCommand("UPDATE Tbl_Yemekler SET Durum = 1 WHERE YemekId = @YemekId", bgl.baglanti());
            komut2.Parameters.AddWithValue("@YemekId", YemekId);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
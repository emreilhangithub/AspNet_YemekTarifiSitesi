using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class Yemekler : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        private string KategoriId = "";
        private string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                KategoriId = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DdlKategori.DataTextField = "KategoriAd";
                DdlKategori.DataValueField = "KategoriId";
                DdlKategori.DataSource = dr2;
                DdlKategori.DataBind();
            }

            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme işlemi

            if (islem == "sil")
            {
                SqlCommand komutSil = new SqlCommand("DELETE FROM Tbl_Kategoriler WHERE KategoriId = @KategoriId", bgl.baglanti());
                komutSil.Parameters.AddWithValue("@KategoriId", KategoriId);
                komutSil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnYemekEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarifi,KategoriId) VALUES (@YemekAd,@YemekMalzeme,@YemekTarifi,@KategoriId)", bgl.baglanti());
            komut.Parameters.AddWithValue("@YemekAd", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@YemekMalzeme", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@YemekTarifi", TxtTarif.Text);
            komut.Parameters.AddWithValue("@KategoriId", DdlKategori.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
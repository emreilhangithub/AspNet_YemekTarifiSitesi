using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNet_YemekTarifiSitesi.Web
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        private string yemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekID = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("SELECT YemekAd FROM Tbl_Yemekler WHERE YemekId = @YemekId", bgl.baglanti());
            komut.Parameters.AddWithValue("@YemekId", yemekID);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                LblYemekAdi.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YorumYemekId = @YemekId", bgl.baglanti());
            komut2.Parameters.AddWithValue("@YemekId", yemekID);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.baglanti().Close();

        }

        protected void BtnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand(@"INSERT INTO Tbl_Yorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YorumYemekId) VALUES (@YorumAdSoyad,@YorumMail,@YorumIcerik,@YorumYemekId)", bgl.baglanti());
            komut.Parameters.AddWithValue("@YorumAdSoyad", TxtYorumAdSoyad.Text);
            komut.Parameters.AddWithValue("@YorumMail", TxtMailAdresi.Text);
            komut.Parameters.AddWithValue("@YorumIcerik", TxtYorumunuz.Text);
            komut.Parameters.AddWithValue("@YorumYemekId", yemekID);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
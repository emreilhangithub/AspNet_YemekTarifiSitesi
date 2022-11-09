using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string YorumId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            YorumId = Request.QueryString["YorumId"];

            SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad,YorumMail,YorumIcerik,YemekAd FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON Tbl_Yorumlar.YorumYemekId = Tbl_Yemekler.YemekId WHERE YorumId = @YorumId", bgl.baglanti());
            komut.Parameters.AddWithValue("@YorumId", YorumId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtYorumAdSoyad.Text = dr[0].ToString();
                TxtYorumMail.Text = dr[1].ToString();
                TxtYorumIcerik.Text = dr[2].ToString();
                TxtYorumYemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();


        }
    }
}
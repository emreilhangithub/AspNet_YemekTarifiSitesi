using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNet_YemekTarifiSitesi.Web
{
    public partial class TarifOner : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilisi,TarifResim,TarifSahip,TarifSahipMail) VALUES (@TarifAd,@TarifMalzeme,@TarifYapilisi,@TarifResim,@TarifSahip,@TarifSahipMail)",bgl.baglanti());
            komut.Parameters.AddWithValue("@TarifAd", TxtTarihAd.Text);
            komut.Parameters.AddWithValue("@TarifMalzeme", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@TarifYapilisi", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@TarifResim", FileUploadResim.FileName);
            komut.Parameters.AddWithValue("@TarifSahip", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@TarifSahipMail", TxtMailAdresi.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır.");

        }
    }
}
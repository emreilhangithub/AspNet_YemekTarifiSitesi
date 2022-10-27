using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        private string yemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekID = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("SELECT YemekAd From Tbl_Yemekler where YemekId = @YemekId", bgl.baglanti());
            komut.Parameters.AddWithValue("@YemekId", yemekID);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                LblYemekAdi.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}
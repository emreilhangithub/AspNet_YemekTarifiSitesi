using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string KategoriId="";
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriId = Request.QueryString["KategoriId"];

            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler WHERE KategoriId = @KategoriId", bgl.baglanti());
            komut.Parameters.AddWithValue("@KategoriId", KategoriId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtKategoriAdi.Text = dr[1].ToString();
                TxtKategoriAdet.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}
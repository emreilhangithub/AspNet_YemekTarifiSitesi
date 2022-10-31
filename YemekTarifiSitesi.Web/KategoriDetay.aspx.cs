using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE KategoriId = @KategoriId", bgl.baglanti());
            komut.Parameters.AddWithValue("@KategoriId", kategoriId);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspNet_YemekTarifiSitesi.Web
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT Metin FROM Tbl_Hakkimizda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtMetin.Text = dr[0].ToString();
                }
                bgl.baglanti().Close();

            }
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Hakkimizda SET Metin = @Metin", bgl.baglanti());
            komut.Parameters.AddWithValue("@Metin", TxtMetin.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
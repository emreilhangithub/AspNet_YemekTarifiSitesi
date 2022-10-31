using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class iletisim : System.Web.UI.Page
    {
        private Sqlsinifi bgl = new Sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) VALUES (@MesajGonderen,@MesajBaslik,@MesajMail,@MesajIcerik)", bgl.baglanti());
            komut.Parameters.AddWithValue("MesajGonderen", TxtGonderen.Text);
            komut.Parameters.AddWithValue("MesajBaslik", TxtKonu.Text);
            komut.Parameters.AddWithValue("MesajMail", TxtMail.Text);
            komut.Parameters.AddWithValue("MesajIcerik", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
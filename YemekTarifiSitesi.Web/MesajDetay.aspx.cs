using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Web
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        Sqlsinifi bgl = new Sqlsinifi();
        string MesajId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            MesajId = Request.QueryString["MesajId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Mesajlar WHERE MesajId = @MesajId", bgl.baglanti());
                komut.Parameters.AddWithValue("@MesajId", MesajId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtMesajGonderen.Text = dr[0].ToString();
                    TxtMesajBaslik.Text = dr[1].ToString();
                    TxtMail.Text = dr[2].ToString();
                    TxtMesajIcerik.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }
    }
}